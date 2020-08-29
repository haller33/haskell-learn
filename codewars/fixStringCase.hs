module FixString where 

import Data.Char(isLower, toUpper, toLower)

stringToArray ::  String -> [String]
stringToArray "" = []
stringToArray x = take 1 x : stringToArray (tail x) 

arrayToString :: [String] -> String
arrayToString = foldMap id

oneStringToCaracter :: String -> Char
oneStringToCaracter = head . take 1 

orFalse :: Bool -> Bool
orFalse = (||) False

countNumberOfLowerCaracterInArray :: [String] -> Int
countNumberOfLowerCaracterInArray = length
                             . filter orFalse 
                             . map (isLower . oneStringToCaracter)

convertString :: (Char -> Char) -> String -> String
convertString f x = map (f . oneStringToCaracter) . stringToArray $ x 

haveMoreLowerThanUpper :: String -> Bool
haveMoreLowerThanUpper x = let con = (countNumberOfLowerCaracterInArray . stringToArray) x
                               in con >= length x - con

-- (\x -> read x :: Integer) . foldMap show . reverse . sort 
--                    $ map (\x -> read [x] :: Integer) $ show s

solve :: String -> String
solve x | haveMoreLowerThanUpper x = convertString toLower x
        | otherwise = convertString toUpper x 

