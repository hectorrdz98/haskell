-- Sier.hs

import System.IO

main = do
    putStr "N: "
    hFlush stdout
    n <- readLn
    let
        dest = n :: Int
    nextRow 1 dest [0, 1]

nextRow act dest lastElem
    | act > dest = return()
    | otherwise = do
        nextCol 1 act dest lastElem [0]

nextCol act dest finalDest (x:another) actElem
    | act > dest = do
        let
            newElem = actElem ++ [0]
        putStrLn ""
        nextRow (dest+1) finalDest newElem
    | otherwise = do
        let
            newVal = x + (head another)
            newElem = actElem ++ [newVal]
        if (mod newVal 2 == 0)
            then do
                putStr " " 
            else do
                putStr "*"
        nextCol (act+1) dest finalDest another newElem


        