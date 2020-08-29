
module Main where

import Data.List(subsequences)


readIntString :: String -> Integer
readIntString x = read x :: Integer

filterSequences :: [Integer] -> [[Integer]]
filterSequences xs = filter (\x -> length x == 4) . subsequences $ xs


convertStringsToArray :: String -> [Integer]
convertStringsToArray x = map readIntString . words $ x


solve :: String -> String
solve x = unwords $ [ show . minimum . map sum . filterSequences . convertStringsToArray $ x,
                      show . maximum . map sum . filterSequences . convertStringsToArray $ x ]


main :: IO ()
main = interact solve
