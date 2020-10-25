--divisores :: Int -> [Int]
--divisores n = [x | x<-[1..n], n`mod`x==0]


--isPrime :: Int -> Bool
--isPrime n = divisores n == [1,n]


--primosGemeos :: [(Int,Int)] 
--primosGemeos n = [x | x <- [1..n], (isPrime n, isPrime n+2)]