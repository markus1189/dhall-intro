let FooBarBaz = constructors < Foo : { foo : Text }
                             | Bar : { bar : Natural }
                             | Baz : {}
                             > in
[ FooBarBaz.Foo  { foo = "a foo" }
, FooBarBaz.Bar  { bar = 42 }
, FooBarBaz.Baz  {=}
]