let Prelude =
  https://raw.githubusercontent.com/dhall-lang/Prelude/master/package.dhall in

Prelude.`List`.iterate 5 Natural (\(x : Natural) -> x + 1) 0