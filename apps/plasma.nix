{pkgs, ...}: {
  programs.plasma = {
    enable = true;

    # kpackagetool6 --list --type Plasma/Applet --global
    # lists all available widgets
    panels = [
      {
        location = "top";
        height = 28;
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          "org.kde.plasma.activitypager"
          "org.kde.plasma.appmenu"

          "org.kde.plasma.panelspacer"

          "org.kde.plasma.systemmonitor.cpucore"
          "org.kde.plasma.systemmonitor.net"
          "org.kde.plasma.systemmonitor.memory"
          "org.kde.plasma.systemmonitor.diskactivity"

          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
      }
      {
        location = "left";
        height = 56;
        widgets = [
          "org.kde.plasma.icontasks"

          "org.kde.plasma.panelspacer"

          "org.kde.plasma.trash"
          "org.kde.plasma.showdesktop"
        ];
      }
    ];
  };
}
