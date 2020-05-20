-- fibo.hs

import System.IO

main = do
  putStr "Posicion del termino: "
  hFlush stdout
  linea <- getLine
  let
    n = read linea :: Int
    f = fibo n
  putStrLn $ "El termino es: " ++ (show f)

fibo 0 = 0
fibo 1 = 1
fibo n = (fibo (n-1)) + (fibo (n-2))