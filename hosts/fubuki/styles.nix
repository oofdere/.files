{pkgs, ...}: {
  stylix.image = pkgs.fetchurl {
    url = "https://pbs.twimg.com/media/GIhdWJibAAA55kJ.jpg:orig";
    sha256 = "09d64fc2b6e8393d52a1d3116dad4b9f1a21c3754794d3bf618d2cc458bd4b7c";
  };

  stylix.base16Scheme = ./base16.yml;
}
