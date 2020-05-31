-- bubble.hs

import System.IO

main = do
  putStr "Lista de numeros enteros: "
  hFlush stdout
  linea <- getLine
  let
    lista = read linea :: [Int]
    ordenada = bubbleSort lista
  putStrLn $ "La lista ordenada es: " ++ (show ordenada)

bubbleSort [] = []
bubbleSort [x] = [x]
bubbleSort (x:y:xs) = if sorted thisSort then thisSort else bubbleSort thisSort
    where thisSort = (min x y) : bubbleSort ((max x y):xs)

sorted [] = True
sorted [x] = True
sorted (x:y:xs) = if x <= y then sorted (y:xs) else False