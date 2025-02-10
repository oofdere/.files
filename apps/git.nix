{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "Tibet Tornaci";
    userEmail = "oofdere@hey.com";
    extraConfig = {
      github.user = "oofdere";
      init = { defaultBranch = "trunk"; };
    };
  };

  programs.gh = {
    enable = true;
  };
}
