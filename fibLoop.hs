main = do
    input <- readLn :: IO Int
    print (fibonacci input)

fibonacci :: Int -> Integer
fibonacci n = do
    let loop a b n = do
        if n < 1
            then b
        else do
            loop b (a + b) (n - 1)
    loop 0 1 n
