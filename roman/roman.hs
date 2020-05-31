--roman.hs

import System.IO

main = do
    putStr "N: "
    hFlush stdout
    preN <- readLn
    let
        n = preN :: Int
    roman n

roman n = do
    let
        m = div n 1000
        n1 = n - (1000*m)
        c = div n1 100
        n2 = n1 - (100*c)
        d = div n2 10
        n3 = n2 - (10*d)

        totalMill = mill m
        totalCent = cent c
        totalDec = dec d
        totalUnit = unit n3

    putStrLn $ "Romano: " ++ totalMill ++ totalCent ++ totalDec ++ totalUnit

unit n
    | n == 0 = ""
    | n == 1 = "I"
    | n == 2 = "II"
    | n == 3 = "III"
    | n == 4 = "IV"
    | n == 5 = "V"
    | n == 6 = "VI"
    | n == 7 = "VII"
    | n == 8 = "VIII"
    | otherwise = "IX"

dec n
    | n == 0 = ""
    | n == 1 = "X"
    | n == 2 = "XX"
    | n == 3 = "XXX"
    | n == 4 = "XL"
    | n == 5 = "L"
    | n == 6 = "LX"
    | n == 7 = "LXX"
    | n == 8 = "LXXX"
    | otherwise = "XC"

cent n
    | n == 0 = ""
    | n == 1 = "C"
    | n == 2 = "CC"
    | n == 3 = "CCC"
    | n == 4 = "CD"
    | n == 5 = "D"
    | n == 6 = "DC"
    | n == 7 = "DCC"
    | n == 8 = "DCCC"
    | otherwise = "CM"

mill n
    | n == 0 = ""
    | n == 1 = "M"
    | n == 2 = "MM"
    | otherwise = "MMM"