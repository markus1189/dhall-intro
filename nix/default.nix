{ nixpkgs ? import <nixpkgs> {} }:

let callPackage = nixpkgs.haskellPackages.callPackage; in

rec {
  dhall-bash = callPackage ./dhall-bash.nix { inherit dhall; };
  dhall-json = callPackage ./dhall-json.nix { inherit dhall; };
  dhall-nix = callPackage ./dhall-nix.nix { inherit dhall; };
  dhall-text = callPackage ./dhall-text.nix { inherit dhall; };
  dhall = callPackage ./dhall.nix {};
}
