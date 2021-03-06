

module Main where

import Data.Int

readIntString :: [String] -> [Int64]
readIntString = map (\x -> read x :: Int64)


solve :: String -> String
solve x = show $ sum $ tail $ readIntString $ words x


main :: IO()
main = interact solve
