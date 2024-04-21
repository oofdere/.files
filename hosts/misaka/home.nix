{
  config,
  pkgs,
  services,
  ...
}: {
  imports = [
    ../../apps/git.nix
    ../../apps/bash.nix
  ];

  home.username = "teo";
  home.homeDirectory = "/home/teo";

  home.packages = with pkgs; [
    nano
    cowsay
    gnupg
    tree
    bun
    ventoy
  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
