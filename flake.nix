{
  description = "Example nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    self,
    nix-darwin,
    nixpkgs,
    home-manager,
    nix-vscode-extensions,
  }: {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#simple
    darwinConfigurations.beako = nix-darwin.lib.darwinSystem {
      modules = [
        ./config.nix
        home-manager.darwinModules.home-manager
        {
          nixpkgs.overlays = [nix-vscode-extensions.overlays.default];
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.teo = import ./home.nix;
          home-manager.backupFileExtension = "backup";
        }
      ];
    };
  };
}
