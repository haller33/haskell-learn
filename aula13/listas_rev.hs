--- função que recebe um lista e retorna
-- o inverso dessa lista
-- 
-- Exemplo de entrada [1,2,3]
-- Exemplo de saida [3,2,1]



inv_lista_acc :: [n] -> [n] -> [n]
inv_lista_acc [] xx = xx
inv_lista_acc (x:xs) xx = inv_lista_acc xs (x:xx)



inv_lista :: [t] -> [t]
inv_lista [] = []
inv_lista (x:xs) = inv_lista_acc xs [x]


inv_list_2 :: [r] -> [r]
inv_list_2 [] = []
inv_list_2 (x:xs) = inv_list_2 xs ++ [x]


