import Data.List(nub)

countat :: Int -> [Int] -> Int
countat num xs | xs == [] = 1
               | num == head xs = 1 + countat num (tail xs)
               | otherwise = 1



numberElementsInList :: Int -> [Int] -> Int
numberElementsInList x xs = length . filter (\y -> y==x) $ xs 

solve :: [Int] -> [Int]
solve xs = map (\y -> y * numberElementsInList y xs) $ nub xs


sumConsecutives :: [Int] -> [Int]
sumConsecutives = solve



