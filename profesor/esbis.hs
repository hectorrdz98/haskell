-- esbis.hs

import System.IO

main = do
  putStr "Da le año: "
  hFlush stdout
  linea <- getLine
  let
    y = read linea :: Int
    es = esBisiesto y
  putStrLn $ "Es bisiesto? " ++ (show es)

esBisiesto y = or [(mod y 400) == 0, and [(mod y 4) == 0, (mod y 100) > 0]]