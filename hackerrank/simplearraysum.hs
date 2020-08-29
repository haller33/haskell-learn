

module Main where

readIntString :: [String] -> [Int]
readIntString = map (\x -> read x :: Int)


solve :: String -> String
solve x = show $ sum $ tail $ readIntString $ words x


main :: IO()
main = interact solve
