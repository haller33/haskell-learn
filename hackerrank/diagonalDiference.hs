
module Main where

slice :: Int -> [a] -> [[a]]
slice x xs | length xs == 0 = []
           | x > (length xs) = [xs]
           | otherwise = (take x xs) : (slice x $ drop x xs)

z
diagonalResult :: String -> String
diagonalResult x = show . abs $ (n - y)
                    where s = getMatrix $ x 
                          n = sum . diagonal $ s 
                          y = sum . diagonal . reverse $ s


getDiagonal :: [Int] -> [[Int]] -> [Int]
getDiagonal _  [] = []
getDiagonal ii xs = (!!) (head xs) (head ii) : getDiagonal (tail ii) (tail xs)


diagonal :: [[Int]] -> [Int]
diagonal = getDiagonal [0..] 


readIntString :: String -> Int
readIntString x = read x :: Int


getMatrix :: String -> [[Int]]
getMatrix xs = map (map readIntString)
             . map words . tail . lines $ xs


solve :: String -> String
solve = diagonalResult


main :: IO ()
main = interact solve






