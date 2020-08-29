
module DescendingOrder where

import Data.List (sort)

descendingOrder :: Integer -> Integer
descendingOrder ys = (\x -> read x :: Integer) . foldMap show . reverse . sort
           $ map (\x -> read [x] :: Integer) $ show ys



