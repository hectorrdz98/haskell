-- quick.hs

import System.IO

main = do
  putStr "Lista de numeros enteros: "
  hFlush stdout
  linea <- getLine
  let
    lista = read linea :: [Int]
    ordenada = qsort lista
  putStrLn $ "La lista ordenada es: " ++ (show ordenada)

qsort [] = []
qsort (x : resto) =
  (qsort [y | y<-resto, y<=x]) ++ [x] ++ (qsort [y | y<-resto, y>x])