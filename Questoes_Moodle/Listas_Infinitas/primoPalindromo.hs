inverso :: [Int] -> [Int] --inverter numero
inverso [] = []
inverso [h:t] = inverso t ++ [h]

palindromo :: [Int] -> Bool --verificar se é palindromo
palindromo [] = True
palindromo n
    | n == inverso n = True
    |otherwise = False

crivo :: [Int] -> [Int] 
crivo [] = []
crivo (x:xs) = x : crivo [ n | n <- xs, mod n x /= 0]


primoPalindromo :: [Int]
primoPalindromo = crivo ([2..])