-- ocurrencias.hs

import System.IO

main = do
    putStr "N: "
    hFlush stdout
    n <- getLine
    let
        f = factorial n
        c0 = ocurrencias 0 f
        c1 = ocurrencias 1 f
        c2 = ocurrencias 2 f
        c3 = ocurrencias 3 f
        c4 = ocurrencias 4 f
        c5 = ocurrencias 5 f
        c6 = ocurrencias 6 f
        c7 = ocurrencias 7 f
        c8 = ocurrencias 8 f
        c9 = ocurrencias 9 f
    putStrLn $  "El factorial es: " ++ (show f)
    putStrLn $ "(0) " ++ (show c0) ++ "\t(1) " ++ (show c1)
    putStrLn $ "(2) " ++ (show c2) ++ "\t(3) " ++ (show c3)
    putStrLn $ "(4) " ++ (show c4) ++ "\t(5) " ++ (show c5)
    putStrLn $ "(6) " ++ (show c6) ++ "\t(7) " ++ (show c7)
    putStrLn $ "(8) " ++ (show c8) ++ "\t(9) " ++ (show c9)

factorial 0 = 1
factorial n = n * factorial (n-1)

ocurrencias _ 0 = 0
ocurrencias d n =
    (compara d (mod n 10)) + (ocurrencias d (div n 10))

compara d x
    | d == x = 1
    | otherwise = 0