{-
  Programa: quick.hs
  Funcion:  Ordenar lista usando quick sort
-}

main = do
  putStr "Da una lista de enteros: "
  linea <- getLine
  let
    lista = read linea :: [Int]
    ordenada = qsort lista
  putStrLn $ "La lista ordenada es: " ++ (show ordenada)

qsort [] = []
qsort (x : resto) =
  (qsort [y | y<-resto, y<=x]) ++ [x] ++ (qsort [y | y<-resto, y>x])