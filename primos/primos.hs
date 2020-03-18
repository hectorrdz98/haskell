-- primos.hs

main = do
    putStr "Da el valor de n: "
    linea <- getLine
    let n = read linea :: Int
        r = esPrimo n
        fact = factPrimos n 2
    putStrLn $ "Es primo? " ++ (show r)
    putStrLn $ "Factores primos: " ++ (show fact)

esPrimo n = (length [x | x<-[1..n], n `mod` x == 0]) == 2

factPrimos 1 _ = []
factPrimos n p
    | n `mod` p == 0 = [p] ++ (factPrimos (n `div` p) p)
    | otherwise = factPrimos n (sigPrimo p)

sigPrimo n
    | esPrimo (n+1) = n+1
    | otherwise = sigPrimo (n+1)
    