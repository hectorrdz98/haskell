-- fibolist.hs

import System.IO

main = do
    putStr "Termino: "
    hFlush stdout
    linea <- getLine
    let
        n = read linea :: Int
        f = [0, 1]
    putStr $ "0 "
    fibo f 0 n

fibo list act final
    | final == 2 = do
        putStr $ "1"
    | act >= (final-1) = return()
    | otherwise = do
        let
            n1 = head list
            n2 = head (tail list)
            list2 = tail list
        putStr $ (show n2) ++ " "
        fibo (list2 ++ [(n1 + n2)]) (act + 1) final