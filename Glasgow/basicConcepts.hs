
module Main where

import Data.Map

roots a b c = 
        let
            det2 = b*b-4*a*c;
            det  = sqrt(det2);
            rootp = (-b + det)/a/2;
            rootm = (-b - det)/a/2;
        in
            [rootm,rootp]

maxnum x y =
  if x > y
     then x
     else y


data Color = Red | Blue | Yellow

color = Red

action = case color of
   Red -> ""
   Blue -> "4"
   Yellow -> "42"
-- 

set :: Data.Map.Map String Integer
set = Data.Map.empty

set1 = Data.Map.insert "Answer" 32 set

main :: IO ()
main = undefined


