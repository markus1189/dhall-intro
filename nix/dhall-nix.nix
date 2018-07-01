{ mkDerivation, base, containers, data-fix, dhall, hnix
, insert-ordered-containers, neat-interpolation, optparse-generic
, stdenv, text
}:
mkDerivation {
  pname = "dhall-nix";
  version = "1.1.5";
  sha256 = "def0586543fb09369d27745db043ae5df08564195faa2a0f76e5c3e6113f0bc8";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base containers data-fix dhall hnix insert-ordered-containers
    neat-interpolation text
  ];
  executableHaskellDepends = [
    base dhall hnix optparse-generic text
  ];
  description = "Dhall to Nix compiler";
  license = stdenv.lib.licenses.bsd3;
}
