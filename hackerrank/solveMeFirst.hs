
module Main where


readIntString :: String -> Int
readIntString x = read x :: Int

solve :: String -> String
solve xs = show . sum . map readIntString . map last . map words . lines $ xs


main :: IO()
main = interact solve
