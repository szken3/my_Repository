fib 0 = 0
fib 1 = 1
fib x = fib(x- 2) + fib(x - 1)

main = do
   print $ fib 6
