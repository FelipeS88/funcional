min3 :: Int -> Int -> Int -> Int
min3 x y z = if(x > y && y > z) then z
             else if(x > y && y < z) then y
             else x