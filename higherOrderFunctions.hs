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
