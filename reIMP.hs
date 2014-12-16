add' :: (Num a) => a->a->a
add' a b = a + b

subtract' :: (Num a) => a->a->a
subtract' a b = a - b

odd' :: (Integral a) => a -> Bool
odd' a = if mod a 2 == 0 then False else True

even' :: (Integral a) => a -> Bool
even' a = if mod a 2 == 0 then True else False

succ' :: (Num a) => a -> a
succ' a = a + 1

prev' :: (Num a) => a -> a
prev' a = a - 1

head' :: [a] -> a
head' (a:_) = a

tail' :: [a] -> [a]
tail' (_:a) = a

length' :: [a] -> Int 
length' a = sum' [1|_<-a]

sum' :: (Num a) => [a] -> a 
sum' [] = 0
sum' (a:b) = a + sum' b
