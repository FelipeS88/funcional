countNeg :: [Int] -> Int
countNeg [] = 0
countNeg (x:xs) = if(x < 0) 
                        1 + countNeg xs