iguais :: Int -> Int -> Int
iguais a b c | a /= b && b /= c && a /= c = 0
             | a == b && b == c  = 3
             | otherwise 2