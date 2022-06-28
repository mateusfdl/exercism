module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz v 
  | v <= 0 = Nothing
  | otherwise =
  Just $ collatz' v 0
  where
    collatz' 1 count = count
    collatz' n count
      | even n = collatz' (n `div` 2) (count + 1)
      | otherwise = collatz' ( ( n * 3 + 1 ) `div` 2) (count + 2)
