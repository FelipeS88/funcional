merge :: [Int] -> [Int] -> [Int] --Definindo função merge, que elimina duplicatas.
merge xs [] = xs 
merge [] xs = xs 
merge (x: xs) (y: ys) 
| x <y = x: merge xs (y: ys) 
| x> y = y: merge (x: xs) ys 
| otherwise = x: merge xs ys


hamming :: [Int]
hamming = 1: merge (map (* 2) hamming) --obter os numeros de Hamming divisiveis por 2
                (merge (map (* 3) hamming) --obter os numeros de Hamming divisiveis por 3
                       (map (* 5) hamming)) --obter os numeros de Hamming divisiveis por 5




--map = recebe uma função e uma lista e aplica esta função em todos elementos da lista, produzindo uma nova lista.