\(xs : List Natural) ->
let Prelude = https://raw.githubusercontent.com/dhall-lang/Prelude/master/package.dhall in
Prelude.`Text`.concatSep ", "
  (Prelude.`List`.map Natural Text Natural/show xs)