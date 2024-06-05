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
    radeontop
    protonup-qt
    steamtinkerlaunch
  ];

  # xdg.configFile."openxr/1/active_runtime.json".text = ''
  #   {
  #     "file_format_version": "1.0.0",
  #     "runtime": {
  #       "name": "Monado",
  #       "library_path": "${pkgs.monado}/lib/libopenxr_monado.so"
  #     }
  #   }
  # '';

  # xdg.configFile."openvr/openvrpaths.vrpath".text = ''
  #   {
  #     "config": [
  #       "${config.xdg.dataHome}/Steam/config"
  #     ],
  #     "external_drivers": null,
  #     "jsonid": "vrpathreg",
  #     "log": [
  #       "${config.xdg.dataHome}/Steam/logs"
  #     ],
  #     "runtime": [
  #       "${pkgs.opencomposite}/lib/opencomposite"
  #     ],
  #     "version": 1
  #   }
  # '';

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
