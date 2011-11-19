module Mine where

    allEven :: [Integer] -> [Integer]
    allEven x = [ y | y <- x, mod y 2 == 0]

    myrev :: [a] -> [a]
    myrev [] = []
    myrev (h:t) = myrev t ++ [h]

