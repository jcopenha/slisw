module Mine where

    allEven :: [Integer] -> [Integer]
    allEven x = [ y | y <- x, mod y 2 == 0]
