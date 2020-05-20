{---------------------------
  listas.hs
---------------------------}

main = do
  putStr "Da una lista de enteros: "
  linea <- getLine
  let
    lista = read linea :: [Int]
    promedio = div (sum lista) (length lista)
    temp1 = sum lista
    temp2 = length lista
    prom = (fromIntegral temp1 :: Float) / (fromIntegral temp2 :: Float)
  putStrLn $ "El promedio es: " ++ (show promedio)
  putStrLn $ "El promedio es: " ++ (show prom)
