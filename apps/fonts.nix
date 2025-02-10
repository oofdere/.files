{pkgs, ...}: {
  fonts = {
    packages = with pkgs; [
      ipaexfont
      ibm-plex
    ];

    # fontconfig = {
    #   defaultFonts = {
    #     serif = ["IPAex Mincho" "IBM Plex Serif"];
    #     sansSerif = ["IPAex Gothic" "IBM Plex Sans"];
    #     monospace = ["IBM Plex Mono"];
    #   };
    # };
  };
}
