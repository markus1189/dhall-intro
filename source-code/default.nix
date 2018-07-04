{ mkDerivation, base, dhall, stdenv, text }:
mkDerivation {
  pname = "dhall-intro";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base dhall text ];
  license = stdenv.lib.licenses.bsd3;
}
