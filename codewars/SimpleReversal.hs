

module SimpleReversal where 

myArrayOfStringToString :: (Foldable t, Monoid m) => t m -> m
myArrayOfStringToString = foldMap id   

-- foldMap id $ reverse . myStringToArray $ "hello worlds mean"
myStringToArrayOfString :: Foldable t => t Char -> [String]
myStringToArrayOfString = foldMap (\x -> words [x] )



--- checkNumbersOfString :: [Char] -> String -> Char -> [Char]
--- checkNumbersOfString ns xs x | length xs == 1 = head xs 0
---                              | otherwise = checkNumbersOfString x:ns tail xs head xs
--- 
--- 
reverseStringWithSpaces :: String -> String
reverseStringWithSpaces = undefined
--  checkNumbersOfString [] tail s head s


solve :: String -> String
solve ys = reverseStringWithSpaces $ reverse ys

