
--- Pertense a uma lista verifica
--- func pertence


pertence :: [Int] -> Int -> Bool
pertence [] _     = False
pertence (x:xs) y = x == y || pertence xs y


maior_lst :: [Int] -> Int
maior_lst [x]    = x
maior_lst (x:xs) | (x > maior_lst xs) = x
                 | otherwise          = maior_lst xs
                 

todos_pares :: [Int] -> Bool
todos_pares [x]    = mod x 2 == 0 
todos_pares (x:xs) = mod x 2 == 0 && todos_pares xs


