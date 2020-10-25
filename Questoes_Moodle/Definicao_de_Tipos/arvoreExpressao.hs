data arvoreExpressao = No(Int -> Int -> Int) | Folha Int deriving (Read)

data Exp = Val Int 
| Soma Exp Exp 
| Mult Exp Exp
| Div Exp Exp
| Sub Exp Exp
| Mod Exp Exp
deriving (Read, Eq, Show)