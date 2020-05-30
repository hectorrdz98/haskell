-- Code.hs

import System.IO

main = do
    rW <- readFile "reserved.txt"
    codeFile <- readFile "justasimplecode.py"
    let
        reservedWords = words rW
        foundWords = words codeFile
    findReserved reservedWords foundWords

findReserved [] _ = do
    putStr ""
findReserved (x:otherReserved) foundWords = do
    let
        foundInList = countInList x foundWords 0
    putStrLn $ (show x) ++ ": " ++ (show foundInList)
    findReserved otherReserved foundWords
        

countInList _ [] total = total
countInList x (y:other) total
    | x==y = countInList x other (total+1)
    | otherwise = countInList x other total