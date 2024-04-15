{
  config,
  pkgs,
  ...
}: {
  imports = [
    ../../apps/git.nix
    ../../apps/bash.nix
    ../../apps/codium.nix
  ];

  home.username = "teo";
  home.homeDirectory = "/home/teo";

  home.packages = with pkgs; [
    nano
    cowsay
    gnupg
    tree
    firefox
    kate
    discord
    warp-terminal
    floorp
    steam
    github-desktop
    alejandra
    bun
    alacritty
    qt6.qtwebengine
  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
