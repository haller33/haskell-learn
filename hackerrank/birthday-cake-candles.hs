

module Main where

readIntString :: String -> Int
readIntString x = read x :: Int

checkElement :: Int -> Int -> Bool
checkElement x y = x == y

countMaximum :: Int -> [Int] -> Int
countMaximum x xs = length . filter (\y -> checkElement x y) $ xs

solve :: String -> String
solve xs = show . countMaximum (maximum xx) $ xx
  where xx = map readIntString . tail . words $ xs 


main :: IO ()
main = interact solve



