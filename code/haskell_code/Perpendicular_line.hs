perpPoint (p,q) (a,b,c) = (x,y)
    where
        x = (a * c + b * d) / (a^2 + b^2)
        y = (b * c - q * d) / (a^2 + b^2)
        d = p * b - q * a

main = do
  print $ perpPoint (1,0) (1,2,3)
