--[WIP]


length' []     = 0
length' (_:xs) = 1 + length' xs

sum'[]          = 0
sum' (x:xs)     = x + sum' xs

product' []     = 0
product' (x:xs) = x * product' xs

take' _ []        = 0
take' n _ | n < 1 = 0
take' n (x:xs)    = x:take' (n - 1) xs

drop' _ []             = 0
drop' n (x:xs) | n < 1 = xs
drop' n (_:xs)         = drop'(n - 1) xs

reverse' []       = 0
reverse'(x:xs)    = reverse' xs ++ [x]

fact n = product[1..n]


main = do
    print $ length' [1, 2, 3]
