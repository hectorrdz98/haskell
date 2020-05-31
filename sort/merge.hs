-- merge.hs

import System.IO

main = do
  putStr "Lista de numeros enteros: "
  hFlush stdout
  linea <- getLine
  let
    lista = read linea :: [Int]
    ordenada = mergeSort lista
  putStrLn $ "La lista ordenada es: " ++ (show ordenada)

mergeSort [] = []
mergeSort [a] = [a]
mergeSort a =
  merge (mergeSort firstFew) (mergeSort lastFew)
    where firstFew = take ((length a) `div` 2) a
          lastFew = drop ((length a) `div` 2) a

merge a [] = a
merge [] b = b
merge (a:as) (b:bs)
  | a < b     = a:(merge as (b:bs))
  | otherwise = b:(merge (a:as) bs)