module SortNumbers where 

import Data.List (sort)

sortNumbers :: [Int] -> Maybe [Int]
sortNumbers [] = Nothing
sortNumbers xs = Just (sort xs) 
