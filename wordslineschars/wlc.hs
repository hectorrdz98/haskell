-- wlc.hs Count lines, words and chars in file

import System.IO

main = do
  file <- readFile "file.txt"
  let
    nLines = length (lines file)
    nWords = length (words file)
    nChars = length file
  putStrLn $ "Lineas: " ++ (show nLines)
  putStrLn $ "Palabras: " ++ (show nWords)
  putStrLn $ "Caracteres: " ++ (show nChars)