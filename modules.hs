import Data.List
import Data.Map as Chips

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

