let plus = (\(x : Natural) -> \(y : Natural) -> x + y) in
List/fold Natural [ 1, 2, 3] Natural plus 0

-- => 6