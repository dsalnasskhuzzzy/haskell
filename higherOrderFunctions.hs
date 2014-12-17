--isUpperAlphanum :: Char -> Bool
--isUpperAlphanum = ('elem' ['A'..'Z'])

--isLowerAlphanum :: Char -> Bool
--isLowerAlphanum = ('elem' ['a'..'z'])

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

applyNTimes :: (Integral b) => b -> (a->a) -> a -> a
applyNTimes 1 f x = (f x)
applyNTimes n f x = (f (applyNTimes (n-1) f x))

areYouFat :: (Num a,Ord a) => a -> String
areYouFat x  
	| x<100 = "No"
	| x<120 = "A Little"
	| otherwise = "Extremly"

google = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

--Collatz Sequence
chain :: (Integral a) => a -> [a]
chain  1 = [1]
chain n
	| even n = n:chain (div n 2)
	| odd n = n:chain (n*3 + 1)

numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))
