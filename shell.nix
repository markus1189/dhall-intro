{ pkgs ? import <nixpkgs> {}
, useCodecentricFont ? false
}: with pkgs;

let
  latestDhall = (import ./nix { inherit pkgs; });
  codecentricFont = import ./font-cc.nix { inherit pkgs; };
  ghcPackages = ghc.withPackages (p: with p;
    [
      latestDhall.dhall
      bytestring
      hlint
      hindent
      HaTeX
      lens
      pandoc
      shake
      split
      text
      wreq
    ]
  );
  latexPackages = texlive.combine {
    inherit (texlive)
    animate
    babel
    beamer
    chngcntr
    cleveref
    enumitem
    environ
    etoolbox
    excludeonly
    fancyvrb
    fvextra
    float
    framed
    ifplatform
    lineno
    listings
    mdframed
    media9
    microtype
    minted
    needspace
    ocgx2
    pgf
    scheme-medium
    tcolorbox
    textpos
    todonotes
    trimspaces
    upquote
    xcolor
    xstring
    ;
  };
  pyPackages = with pythonPackages; [ pygments pillow ];
in
  mkShell {
    FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ google-fonts ubuntu_font_family ] ++ (if useCodecentricFont then [codecentricFont] else []); };

    buildInputs = [
      (builtins.attrValues latestDhall)
      coreutils
      ditaa
      fontconfig
      eject
      ghcPackages
      graphviz
      imagemagick
      jq
      latexPackages
      sbt
      scalafmt
      scala
      unzip
      which
    ] ++ pyPackages;

    USE_CC_FONT = lib.boolToString useCodecentricFont;
  }
