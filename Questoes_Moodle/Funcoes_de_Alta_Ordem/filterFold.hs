 filter p = foldr (\ a -> if p a then (a:) else id) []
