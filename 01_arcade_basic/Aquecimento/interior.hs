interior :: [Int] -> [Int]
interior (x:xs) = tail (init (x:xs))