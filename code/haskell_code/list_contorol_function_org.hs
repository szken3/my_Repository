--[WIP]

length' :: [a] -> Int
  length' []     = 0
  length' (_:xs) = 1 + length' xs

sum' :: [a] -> Int
  sum'[]          = 0
  sum' (x:xs)     = x + sum' xs

product' :: [a] -> Int
  product' []     = 0
  product' (x:xs) = x * product' xs

take' :: Int -> [a] -> a
  take' []        = 0
  take' n:_ |

main = do
    print $ length' [1, 2, 3]

length' :: [a] -> Int
