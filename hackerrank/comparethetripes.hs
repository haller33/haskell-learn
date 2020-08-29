
module Main where


readIntString :: String -> Int
readIntString x = read x :: Int

half :: [a] -> ([a],[a])
half xs = splitAt ((div . length $ xs) 2) xs

operateOverTwoTuples :: (a -> a -> b) -> (a,a) -> b
operateOverTwoTuples f x = f (fst x) (snd x)


joinColuns :: ([a],[a]) -> [(a,a)]
joinColuns x = zip (fst x) (snd x) 

checkScoresWith :: (Int -> Int -> Bool) -> String -> [Bool]
checkScoresWith f x = map (operateOverTwoTuples f)
                  . joinColuns
                  . half
                  . map readIntString
                  . words $ x

orFalse :: Bool -> Bool
orFalse = ((||) False)

checkAliceAndBobScores :: String -> [String]
checkAliceAndBobScores x = [ show . length . filter orFalse $ checkScoresWith (>) x,
                             show . length . filter orFalse $ checkScoresWith (<) x ] 


solve :: String -> String
solve = unwords . checkAliceAndBobScores 


main :: IO()
main = interact solve
