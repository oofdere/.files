{
  config,
  pkgs,
  ...
}: {
  home.username = "teo";
  home.homeDirectory = "/Users/teo";

  home.stateVersion = "24.11";

  imports = [
    ./apps/git.nix
    ./apps/bash.nix
    ./apps/codium.nix
  ];

  home.packages = [
    pkgs.htop
    pkgs.neofetch
    pkgs.zed-editor
    pkgs.raycast
    (pkgs.tree-sitter.override {webUISupport = true;})
  ];

  home.shell.enableShellIntegration = true;
  programs.nushell.enable = true;

  programs.home-manager.enable = true;
}
