gold :: Int -> [(Int,Int)]
gold n = head[(a,b)|let q=primes n, a<-q , b<-q , a+b == n] -- calcula goldbach
primes n = filter c[2..n] -- calcula numeros primos de n 
c primes=null[x|x<-[2..primes-1],primes`mod`x==0] -- verificador para definir primes


goldbach :: Int -> [(Int,Int,Int)]
goldbach n = [n] ++ [(gold n)]



