-- verbs.hs

import System.IO

main = do
    fileIrr <- readFile "irr.txt"
    fileReg <- readFile "reg.txt"
    
    let
        verbsIrr = lines fileIrr
        verbsReg = lines fileReg
    
    putStr "Verbo: "
    hFlush stdout
    verb <- getLine

    let
        n = length verb
        term = drop (n-2) verb
        root = take (n-2) verb
        isReg = inList verb verbsReg
    
    if isReg
        then do
            printReg root term
        else do
            findReg verb verbsIrr

inList _ [] = False
inList x (y:other)
    | x==y = True
    | otherwise = inList x other

printReg root term = do
    let 
        ends = [
            "o", "as", "a", "amos", "an",
            "o", "es", "e", "emos", "en",
            "o", "es", "e", "imos", "en"]
        pos = getPos term
    putStrLn $ "Yo: " ++ root ++ (ends !! pos)
    putStrLn $ "Tu: " ++ root ++ (ends !! (pos+1))
    putStrLn $ "El/Ella: " ++ root ++ (ends !! (pos+2))
    putStrLn $ "Nosotros: " ++ root ++ (ends !! (pos+3))
    putStrLn $ "Ustedes/Ellos: " ++ root ++ (ends !! (pos+4))

getPos term
    | term == "ar" = 0
    | term == "er" = 5
    | otherwise = 10

findReg verb [] = do
    let
        n = length verb
        term = drop (n-2) verb
        root = take (n-2) verb
    printReg root term
    putStr "Correcto? (si/no) "
    hFlush stdout
    answer <- getLine
    update verb answer

findReg verb (x:other) = do
    let conj = words x
    if verb == (conj !! 0)
        then do
            putStrLn $ "Yo: " ++ (conj !! 1)
            putStrLn $ "Tu: " ++ (conj !! 2)
            putStrLn $ "El/Ella: " ++ (conj !! 3)
            putStrLn $ "Nosotros: " ++ (conj !! 4)
            putStrLn $ "Ustedes/Ellos: " ++ (conj !! 5)
        else do
            findReg verb other


update verb answer
    | answer == "no" = do
        putStr "Yo? "
        hFlush stdout
        verbI <- getLine
        putStr "Tu? "
        hFlush stdout
        verbYou <- getLine
        putStr "El/Ella? "
        hFlush stdout
        verbHe <- getLine
        putStr "Nosotros? "
        hFlush stdout
        verbWe <- getLine
        putStr "Ustedes/Ellos? "
        hFlush stdout
        verbThey <- getLine
        appendFile "irr.txt" (verb ++ " " ++ verbI ++ " " ++ verbYou ++ " " ++ verbHe ++ " " ++ verbWe ++ " " ++ verbThey ++ "\n")
    | otherwise = do
        appendFile "reg.txt" (verb ++ "\n")
