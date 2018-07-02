let optSome = [ 1 ] : Optional Natural in
let optNone = [ ] : Optional Natural in
let onJust = (\(n : Natural) -> "It's a " ++ Natural/show n ++ "!") in
[ Optional/fold Natural optSome Text onJust "Nothing :("
, Optional/fold Natural optNone Text onJust "Nothing :("
]

-- => [ "It's a 1!", "Nothing :(" ]
