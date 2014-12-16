--problem 1
--find the sum of all the multiples of 3 of 5 below 1000
solution1 = sum [x|x<-[1..999],mod x 3 == 0 || mod x 5 == 0]

--problem 2
--Find the sum of the even values of the fibonacci sequence that does not exceed 4 million
fibSet 0 = []
fibSet 1 = [0]
fibSet 2 = [0,1]
fibSet numElements = (fibSet (numElements-1)) ++ [addLastTwo (fibSet (numElements-1))]

addLastTwo xs = last xs + last (init xs) 

reverseFibSet 0 = [0]
reverseFibSet 1 = [1,0]
reverseFibSet n = addFirstTwo(reverseFibSet (n-1)):reverseFibSet(n-1) 
addFirstTwo (a:b:_) = a+b 

solution2 = sum [x|x<-(reverseFibSet 35),mod x 2 == 0]

--problem 3

