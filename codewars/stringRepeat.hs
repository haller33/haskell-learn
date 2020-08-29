

module StringRepeat where



repeatStr :: Int -> String -> String
repeatStr i sx | i == 0 = ""
               | otherwise = sx ++ repeatStr (i-1) sx



