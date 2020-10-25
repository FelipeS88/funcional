map' f xs = foldr g v xs
    where
    v = []
    g = f x : z