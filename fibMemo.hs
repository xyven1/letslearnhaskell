main = do
    input <- readLn :: IO Int
    print (fibonacci input)

fibonacci :: Int -> Integer
fibonacci = (map fibm [0..] !!)
    where fibm 0 = 0
          fibm 1 = 1
          fibm n = fibonacci (n-1) + fibonacci (n-2)
