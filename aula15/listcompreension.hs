



par :: Int -> Bool
par x = mod x 2 == 0

listas = [x | x <- [1 .. 100], par x] 

maioresquesinquenta = [x | x <- listas , x > 50]




