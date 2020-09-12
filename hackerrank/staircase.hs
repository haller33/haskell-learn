
module Main where

import Text.Printf

makeStairs :: Int -> Int -> String
makeStairs state static | static - state >= 0 = "#" ++
                          makeStairs state (static - 1)
                        | otherwise = ""

makeSpaces :: Int -> String
makeSpaces 1 = ""
makeSpaces static = " " ++ makeSpaces (static - 1)

solve :: Int -> Int -> IO ()
solve state static | state == 0 = printf ""
                   | state > 0 = do
                       printf "%s%s\n" spaces stairs
                       solve (state - 1) static
                         where
                           spaces = makeSpaces state
                           stairs = makeStairs state static
            
main :: IO ()
main = do
    n <- readLn :: IO Int
    solve n n

