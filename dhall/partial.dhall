let Prelude =
  https://raw.githubusercontent.com/dhall-lang/Prelude/master/package.dhall in

\(a : Type) ->
  \(xs : List a) ->
    \(f : a -> a) ->
      Prelude.`List`.map a a f xs