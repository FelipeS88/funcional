data Pessoa = Pessoa { nome :: String
            , idade :: Int
            , salario :: Float 
            }

data Criterio = ByNome | ByIdade | BySalario deriving (Eq)

-- classifica lista de pessoa por critério
sortListPessoa :: [Pessoa] -> Criterio -> [Pessoa]
sortListPessoa [] _ = []
sortListPessoa (p:ps) c = (sortListPessoa left c) ++ [p] ++ (sortListPessoa right c)
    where 
    left = [ x | x <- ps, (comp x p c) ]
    right = [ x | x <- ps, not (comp x p c) ]       
           
comp (Pessoa nome1 idade1 salario1) (Pessoa nome2 idade2 salario2) criterio 
    | criterio == ByNome = (nome1 <= nome2)
    | criterio == ByIdade = (idade1 <= idade2)
    | criterio == BySalario = (salario1 <= salario2)
    
instance Show Pessoa where
    show (Pessoa nome idade salario) = show nome ++ " tem " ++ show idade ++ 
                                       " anos e ganha de salario " ++ show salario  

pessoas = [ Pessoa "Felipe" 20 3000, Pessoa "Dayana" 23 4500, Pessoa "Pedro" 18 2200]