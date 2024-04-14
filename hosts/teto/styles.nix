{pkgs, ...}: {
  stylix.image = pkgs.fetchurl {
    url = "https://i.ytimg.com/vi/HhN4wdpbPrg/hqdefault.jpg";
    sha256 = "e0a04e679a2a0d84bf1f3da79caf09baa0ca7a149138c98dc4faed30db7685aa";
  };
}
