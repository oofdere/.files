{ config, pkgs, ... }:

{
  imports = [
    ../../apps/git.nix
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
    vscodium
    warp-terminal
    floorp
    steam
    github-desktop
  ];

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      uname -a
      cowsay "look at my epic motd!!1!"
      printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "bash" }}\x9c'
    '';
    shellAliases = {
      update = "sudo nixos-rebuild switch";
      upgrade = "sudo nixos-rebuild switch --upgrade";
    };
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
