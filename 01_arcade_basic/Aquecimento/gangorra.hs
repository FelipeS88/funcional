gangorra :: Int -> Int -> Int -> Int -> Int
gangorra a b c d = if(a*b == c*d ) then 0
                   else if (a*b > c*d) then -1
                   else 1