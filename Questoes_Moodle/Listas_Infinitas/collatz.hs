col :: Int -> Int
col 1 = 1
col n = 
        if (even n)
            then (n `div` 2)
            else (3 * n + 1)

collatz :: Int -> [Int]            
collatz n = 
            if n == 1
                then [1]
                else [n] ++ collatz(col n)

-- even = aplicada a um argumento integral, retorta True se o argumento for par, e False caso contrário 