<<<<<<< HEAD

iguais3 x y z = if x /= y && x /= z && y /= z then 0
		else if x == y && x == z && y == z then 3
		else 2


main = do
    line1 <- getLine 
    line2 <- getLine
    line3 <- getLine
    let x = read line1 :: Int
    let	y = read line2 :: Int
    let	z = read line3 :: Int
=======

iguais3 x y z = if x /= y && x /= z && y /= z then 0
		else if x == y && x == z && y == z then 3
		else 2


main = do
    line1 <- getLine 
    line2 <- getLine
    line3 <- getLine
    let x = read line1 :: Int
    let	y = read line2 :: Int
    let	z = read line3 :: Int
>>>>>>> commit initial
    print $ iguais3 x y z