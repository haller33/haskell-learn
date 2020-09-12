
import Data.List(nub)



percorListCount :: Int -> Int -> [Int] -> [Int]
percorListCount cont frtE [] = [cont]
percorListCount cont frtE [x] = if x == frtE then [cont+1] else [cont,1]
percorListCount cont frtE (x:xs) | frtE == x = percorListCount (cont+1) frtE xs
                                 | otherwise = 1:percorListCount cont x xs


numberElementArray :: [Int] -> [Int]
numberElementArray (x:xs) = percorListCount 1 x xs


numberElementsInList :: Int -> [Int] -> Int
numberElementsInList x xs = length . filter (\y -> y==x) $ xs 

solve :: [Int] -> [Int]
solve xs = map (\y -> y * numberElementsInList y xs) $ nub xs


sumConsecutives :: [Int] -> [Int]
sumConsecutives = solve

