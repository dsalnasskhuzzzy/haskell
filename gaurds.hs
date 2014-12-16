max' :: (Ord a) => a -> a -> a
max' a b
	| a > b  = a
	| otherwise = b

initials :: String -> String -> String
initials firstName lastName = [f] ++ "." ++ [l] ++ "."
	where (f:_) = firstName
	      (l:_) = lastName


