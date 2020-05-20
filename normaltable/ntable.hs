-- normal table

import Text.Printf

main = do
    let 
        x = 0.0 :: Float
    putStr "\t   "
    printTop 0 9
    putStrLn ""
    printRow x 3.9

printTop init end
    | init > end = return()
    | otherwise = do
        putStr $ (show init) ++ " |      "
        printTop (init + 1) end

printRow init end
    | init > end = return()
    | otherwise = do
        putStr $ (printf "%1.1f" init) ++ " | "
        printCol init 0 9
        putStrLn ""
        printRow (init+0.1) end

printCol x init end
    | init > end = return()
    | otherwise = do
        let 
            x1 = x + (init / 100.0)
            a = area 0 (x1 / 1000) 1000
        putStr $ (printf "%6.2f" a) ++ " | "
        printCol x (init+1) end

area x base n
    | n == 0 = 0
    | otherwise = (f x) * base + (area (x + base) base (n - 1))

f x = (exp (-x * x / 2)) / (sqrt (2 * pi))
