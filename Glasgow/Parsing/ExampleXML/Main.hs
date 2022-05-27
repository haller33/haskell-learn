
module Main where

import ShowParser ( parserShow )

data PersonRecord = MkPersonRecord {
  name :: String,
  address :: Address,
  id :: Integer,
  labels :: [Label]
} deriving (Show)

data Address = MkAddress {
  line1 :: String,
  number :: Integer,
  street :: String,
  town :: String,
  postcode :: String
} deriving (Show)

data Label = Green | Red | Blue | Yellow deriving (Show)

rec1 = MkPersonRecord 
  "Willian Shakspear"
  (MkAddress "School of Chicago" 17 "Lilly Island" "Glasgow" "G123 432")
  552314
  [Green, Blue]

rec2 = MkPersonRecord
  "Willian Clake"
  (MkAddress "School of Notrean" 17 "Lilly Island Two Town" "Glasgow" "G431 4432")
  55345
  [Green, Blue]


main :: IO ()
main = do
  putStrLn $ parserShow $ show rec1
  putStrLn $ parserShow $ show rec2
  -- putStr "Hello World"
