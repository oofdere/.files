{pkgs, ...}: {
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
}
