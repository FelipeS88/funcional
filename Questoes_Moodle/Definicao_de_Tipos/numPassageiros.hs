data Trem t = Vagao t (Trem t) | Vazio deriving Show
type Quantidade = Int
type Peso = Int

data Carga = SemCarga 
| Passageiro Quantidade 
| Mercadoria Peso 
deriving (Show)

--numPassageiros :: Trem Carga -> Int
--numPassageiros Trem Carga = head 

