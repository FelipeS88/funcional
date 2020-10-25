data ArvBin a  = Vazia | No a (ArvBin a) (ArvBin a) deriving (Show)

cheia Vazia = True
cheia (No n Vazia Vazia) = True
cheia (No n left Vazia) = False
cheia (No n Vazia right) = False
cheia (No n left right) = True && cheia left && cheia right