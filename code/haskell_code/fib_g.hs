fib x
    |x == 0   = 0
    |x == 1   = 1
    |otherwise = fib(x - 2) + fib(x - 1)

main = do
    let x = 6
    print $ fib x
