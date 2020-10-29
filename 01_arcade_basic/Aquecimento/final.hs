final :: Int -> [Int] -> [Int]
final 0 [] = []
final n (x:xs) = drop n (x:xs)