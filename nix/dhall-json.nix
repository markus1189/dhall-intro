{ mkDerivation, aeson, aeson-pretty, base, bytestring, dhall
, insert-ordered-containers, optparse-applicative, stdenv, text
, unordered-containers, yaml
}:
mkDerivation {
  pname = "dhall-json";
  version = "1.2.1";
  sha256 = "999cd25e03d9c859a7df53b535ca59a1a2cdc1b728162c87d23f3b08fc45c87d";
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base dhall insert-ordered-containers optparse-applicative
    text unordered-containers
  ];
  executableHaskellDepends = [
    aeson aeson-pretty base bytestring dhall optparse-applicative text
    yaml
  ];
  description = "Compile Dhall to JSON or YAML";
  license = stdenv.lib.licenses.bsd3;
}
