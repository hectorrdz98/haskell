-- palabras.hs

import System.Environment

main = do
  args <- getArgs
  lineas <- readFile (head args)
  let
    palabras = words lineas
    numPal = length palabras
  putStrLn $ "El numero de palabras es: " ++ (show numPal)