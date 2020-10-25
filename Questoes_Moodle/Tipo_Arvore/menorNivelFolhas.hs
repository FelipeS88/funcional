data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)

menorNivelFolha a = nivel (menorNivel a) a 

nivel _ Vazia = []
nivel 0 (No node Vazia Vazia) = [node]
nivel n (No node esq dir) = ( nivel (n-1) esq ) ++ ( nivel (n-1) dir )

menorNivel (No node Vazia Vazia) = 0
menorNivel (No node esq Vazia) = menorNivel esq + 1
menorNivel (No node Vazia dir) = menorNivel dir + 1
menorNivel (No node esq dir) = ( min (menorNivel esq) (menorNivel dir) ) + 1