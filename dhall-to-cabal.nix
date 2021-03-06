{ mkDerivation, base, bytestring, Cabal, containers, contravariant
, dhall, Diff, directory, filepath, hashable, microlens
, optparse-applicative, prettyprinter, stdenv, tasty, tasty-golden
, tasty-hunit, text, transformers, vector
}:
mkDerivation {
  pname = "dhall-to-cabal";
  version = "1.3.1.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring Cabal containers contravariant dhall filepath
    hashable text transformers vector
  ];
  executableHaskellDepends = [
    base bytestring Cabal dhall directory filepath microlens
    optparse-applicative prettyprinter text transformers
  ];
  testHaskellDepends = [
    base bytestring Cabal dhall Diff filepath microlens prettyprinter
    tasty tasty-golden tasty-hunit text
  ];
  homepage = "https://github.com/ocharles/dhall-to-cabal";
  description = "Compile Dhall expressions to Cabal files";
  license = stdenv.lib.licenses.mit;
}
