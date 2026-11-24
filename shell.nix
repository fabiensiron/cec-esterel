let
  pkgs = import (builtins.fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/nixos-26.05.tar.gz"
  )  {};
in
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    gcc
    gnumake
    binutils
    autoconf
    automake
    libtool
    (noweb.override { useIcon = false; })
    antlr2
    jdk
    git
    gawk
    perl
    which
    diffutils
    graphviz
  ];

  buildInputs = with pkgs; [
    expat
  ];

  CLASSPATH = "${pkgs.antlr2}/share/java/*";
  LC_ALL = "C";
}