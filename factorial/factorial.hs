-- factorial.hs - Calculo de factoriales

main = do
    putStr "Valor de n? "
    linea <- getLine
    let n = read linea :: Integer
        f = factorial n
        r = factor n
    putStrLn $ "Su factorial es: " ++ (show f)
    putStrLn ("Factorial v2 = " ++ (show r))

factorial 0 = 1
factorial n = n * (factorial (n-1))

factor n
    | n == 0 = 1
    | otherwise = n * (factor (n-1))