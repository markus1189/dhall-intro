{ mkDerivation, base, dhall, optparse-applicative, stdenv, text }:
mkDerivation {
  pname = "dhall-text";
  version = "1.0.11";
  sha256 = "61817e1b8c6c0e77a042cadc119c59b94c4577906d35e34738a332c86ac97a7d";
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base dhall optparse-applicative text
  ];
  description = "Template text using Dhall";
  license = stdenv.lib.licenses.bsd3;
}
