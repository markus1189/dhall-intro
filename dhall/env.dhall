let Schema = { home : Text
             , user : Text
             , id : Optional Natural
             } in
let Some = https://raw.githubusercontent.com/dhall-lang/Prelude/master/Optional/Some in
let None = https://raw.githubusercontent.com/dhall-lang/Prelude/master/Optional/None in
{ home = env:HOME as Text
, user = env:USER as Text
, id = Some Natural env:IDENTITY ? None Natural
} : Schema