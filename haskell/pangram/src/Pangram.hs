module Pangram (isPangram) where

import Data.Char
import Data.List

alphabet :: [Char]
alphabet = ['a' .. 'z']

isPangram :: String -> Bool
isPangram text
  | null text = False
  | otherwise = chars
  where
    c = map toLower . filter isAlpha . filter isAscii $ text
    c' = sort $ nub c
    chars = c' == alphabet
