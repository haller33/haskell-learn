module MaxDigitSumSpec where

import Test.Hspec
import MaxDigitSum

-- import Test.HUnit.Lang.Assertion 
import Test.HUnit (assertEqual)

-- myTest :: Int -> Int -> Test.HUnit.Lang.Assertion 
myTest ns exp = do
  assertEqual msg exp actual
  where 
    actual = solve ns
    msg = "Failed at: " ++ showArgs
    showArgs = show ns
    
spec :: Spec
spec = do
  it "Fixed cases " $ do
    myTest 79320 78999
    myTest 99004 98999
    myTest 99088 98999
    myTest 99737 98999
    myTest 29652 28999
    myTest 100 99
    myTest 48 48
    myTest 521 499
    myTest 1 1
    myTest 2 2
    myTest 3 3
    myTest 39188 38999
    myTest 5 5
    myTest 10 9
    myTest 1000 999
    myTest 10000 9999
    myTest 999999999992 999999999989
    myTest 59195 58999
    myTest 19930 19899
    myTest 110 99
    myTest 1199 999
    myTest 120 99
    myTest 18 18
    myTest 2090 1999
    myTest 72694 69999
    
-- the following line is optional for 8.2
-- main = hspec spec
