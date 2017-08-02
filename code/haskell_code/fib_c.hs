fib x = case x of
  0 -> 0
  1 -> 1
  _ | x > 1 -> fib(x -2) + fib(x - 1)

main = do
  print $ fib 6
