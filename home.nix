{ config, pkgs, ... }: {
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
    ];

    programs.nushell.enable = true;


    programs.home-manager.enable = true;
}