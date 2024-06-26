{
  config,
  pkgs,
  services,
  ...
}: {
  imports = [
    ../../apps/git.nix
    ../../apps/bash.nix
    ../../apps/codium.nix
    ../../apps/plasma.nix
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
    vesktop
    warp-terminal
    floorp
    steam
    github-desktop
    alejandra
    bun
    alacritty
    lunacy
    qt6.qtwebengine
    ventoy
  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
