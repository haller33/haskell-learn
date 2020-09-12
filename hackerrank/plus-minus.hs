
module Main where

import Data.List (intercalate)

readDoubleString :: String -> Double
readDoubleString x = read x :: Double

readIntToDouble :: Integral a => a -> Double
readIntToDouble x = (fromIntegral x :: Double)

round6dp :: Double -> Double
round6dp x = fromIntegral (round $ x * 1e6) / 1e6

calculeWhen :: (Double -> Bool) -> [Double] -> Double
calculeWhen f xs = readIntToDouble . length . filter f $ xs

around :: [Double] -> [Double]
around xs = [ round6dp $ (/) (calculeWhen (\x -> x > 0) xs) lengthInput,
              round6dp $ (/) (calculeWhen (\x -> x < 0) xs) lengthInput,
              round6dp $ (/) (calculeWhen (\x -> x == 0) xs) lengthInput
            ]
  where lengthInput = readIntToDouble . length $ xs 

solve :: String -> String
solve = intercalate "\n" . map show . around . map readDoubleString . tail . words 


main :: IO()
main = interact solve
