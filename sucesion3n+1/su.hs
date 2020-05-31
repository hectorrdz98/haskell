--su.hs Longitud de la Sucesión 3n+1

import System.IO

main = do
    putStr "N: "
    hFlush stdout
    preN <- readLn
    let
        n = preN :: Int
        l = getLength n 0
    putStr $ "Longitud: " ++ (show l)

getLength 1 c = c + 1
getLength n c
    |(mod n 2) == 0 = do
        getLength (div n 2) (c+1)
    | otherwise = do
        getLength (1+(n*3)) (c+1)