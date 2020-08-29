module ParseFloat where

import Data.Char(isDigit)
import Data.Maybe(Maybe)


isReal :: String -> Bool
isReal "" = True
isReal x | isDigit (head x) || take 1 x == "." = True && isReal (tail x)
         | otherwise = False

parseFloat :: String -> Maybe Float
parseFloat x | isReal x = Just( read x :: Float )
             | otherwise = Nothing


