test = map (\x -> (x,1)) [1..20]
test2 = map (\x -> (x,even x)) [1..20]
test3 = map (\(a,b) -> a + (f b)) test2
	where f q  
		| q == True = 1
		| q == False = -1
		| otherwise = error ""
