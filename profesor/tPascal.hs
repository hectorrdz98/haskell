{-
  Programa: tPascal.hs
-}

import Text.Printf

main = do
    putStr "Renglon limite: "
    linea <- getLine
    let n = read linea :: Integer
    genera 0 n

genera actual limite
    | actual > limite = do
        putStrLn "Fin"
    | otherwise = do
        itera 0 actual
        genera (actual + 1) limite

itera actual limite
    | actual > limite = do
        putStrLn ""
    | otherwise = do
        -- printf "%6d" (combinaciones limite actual)
        putStr (bloque (combinaciones limite actual))
        itera (actual + 1) limite

bloque n
  | (mod n 2) == 1 = "*"
  | otherwise = " "
    
combinaciones n r = div (factorial n) ((factorial (n-r)) * (factorial r))

factorial n
    | n == 0 = 1
    | otherwise = n * factorial (n-1)