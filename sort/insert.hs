-- insert.hs

import System.IO

main = do
  putStr "Lista de numeros enteros: "
  hFlush stdout
  linea <- getLine
  let
    lista = read linea :: [Int]
    ordenada = insertSort lista
  putStrLn $ "La lista ordenada es: " ++ (show ordenada)

insertSort [] = []
insertSort (x:xs) = insert x (insertSort xs)

insert n [] = [n]
insert n (x:xs) | n <= x    = (n:x:xs)
                | otherwise = x:insert n xs