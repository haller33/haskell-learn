
module Main where

readIntString :: String -> Integer
readIntString x = read x :: Integer


convertStringsToArray :: String -> [Integer]
convertStringsToArray x = map readIntString . words $ x


sumTestingDivision :: Integer -> [Integer] -> Int
sumTestingDivision k xs = length $ [ undefined | (i, xi) <- zip [0 ..] xs 
                                               , (j, xj) <- zip [0 ..] xs 
                                               , i < j, (xi + xj) `mod` k == 0 ]
convertToArguments :: String -> Int
convertToArguments x = sumTestingDivision n xs
           where nn = tail . convertStringsToArray $ x
                 n = head $ nn
                 xs = tail nn


solve :: String -> String
solve x = show . convertToArguments $ x


main :: IO ()
main = interact solve


