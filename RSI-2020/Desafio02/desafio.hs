
module Main where

import System.Environment


digiFloat :: String -> Double
digiFloat x = read x :: Double

fun :: Floating a => a -> a
fun a = (a ** 2) + (2 * a)

delta :: Double -> Double -> Double -> Double
delta b a c = b ^ 2 - 4 * a * c

raiz :: Double -> Double
raiz c = x1 -- [x1, x2]
  where a = 1.0
        b = 2.0
        deltaV = delta b a (-c)
        x1 = if xxs < 0 then 0 else xxs
          where xxs = ((-b) + sqrt deltaV) / 2 * a
        --x2 = if xs < 0 then 0 else xs
        --  where xs = ((-b) - sqrt deltaV) / 2 * a


findLetra :: [(Double, Char)] -> Double -> Char
findLetra [] _ = ' '
findLetra xs x | fst (head xs) == x = snd (head xs)
               | otherwise = findLetra (tail xs) x


dictionaryRealM :: [(Double, Char)]
dictionaryRealM = zip [1 .. 26] ['a' .. 'z']

dictionaryIntM :: [Double]
dictionaryIntM = map fun $ [1 .. 26]

dictionaryM :: [(Double, Char)]
dictionaryM = zip dictionaryIntM ['a' .. 'z']


frase :: [Char]
frase = "3 24 48  360 675  195"

-- dataM = zip [1 .. 26] ['a' .. 'z']
-- resultMW = map (\x -> fun (fst x)) [1..26]

percor :: String -> String
percor (x:y) | y == "" = x : ""
             | x == '\n' = " 0 " ++ percor y
             | x == ' ' && (head y) == ' ' = " 0 " ++ percor y
             | otherwise = x : percor y


resolution :: String -> [Char]
resolution = map (\x -> findLetra dictionaryRealM x)
             . map raiz
             . map digiFloat
             . words
             . percor


main :: IO ()
main = do
  args <- getArgs
  files <- readFile . head $ args
  putStrLn . resolution $ files
