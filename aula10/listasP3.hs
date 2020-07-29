

-- Função que verifica se duas listas são iguais

-- O que é serem iguais ?

--   - Mesmo Numero de Elementos
--   - Possirem os mesmos elementos
--   - Os elementos estarem na mesma posição

-- [1,2,3] e [1,2,3] = True (São Iguais!)
-- [3,2,1] e [1,2,3] = False
-- [] e [1,2,3] = False
-- [1,2] e [] = False


                    
listas_iguais :: [Int] -> [Int] -> Bool
listas_iguais [] [] = True
listas_iguais [] _ = False
listas_iguais _ [] = False
listas_iguais (y:ys) (x:xs) = x == y
  && listas_iguais ys xs



