{-----------------------------------
  normal.hs - Area normal
-----------------------------------}

import Text.Printf

main = do
  putStr "Area de 0 a x: "
  linea <- getLine
  let
    x = read linea :: Float
    a = area 0 (x / 1000) 1000
  putStrLn $ "El area es: " ++ (printf "%6.4f" a)

area x base n
  | n == 0 = 0
  | otherwise = (f x) * base + (area (x + base) base (n - 1))

f x = (exp (-x * x / 2)) / (sqrt (2 * pi))