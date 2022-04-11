main = do
    input <- readLn :: IO Int
    print (fibonacci input)

fibonacci :: Int -> Integer
fibonacci n = fibs !! n
    where fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

