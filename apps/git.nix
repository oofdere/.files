{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "Tibet Tornaci";
    userEmail = "oofdere@hey.com";
  };

  programs.gh = {
    enable = true;
  };
}
