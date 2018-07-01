-- example.dhall
let List/map = http://prelude.dhall-lang.org/List/map in
let List/replicate = http://prelude.dhall-lang.org/List/replicate in
let Optional/None = http://prelude.dhall-lang.org/Optional/None in
let plus = (\(x : Natural) -> \(y : Natural) -> x + y) in
{ a = 42
, b = [] : Optional Natural
, x = Optional/None
, c = -- comments are possible
    { c1 = "foo" : Text
    , c2 = List/map Natural Natural (\(x : Natural) -> x + +1)
             [ +1, +3, +3, +7 ]
    }
, d = List/fold Natural (List/replicate +42 Natural +1) Natural plus +0
}