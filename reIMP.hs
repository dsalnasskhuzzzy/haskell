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
head' [] = error "empty list"
head' (a:_) = a

tail' :: [a] -> [a]
tail' [] = error "empty list"
tail' (_:a) = a

length' :: [a] -> Int 
length' a = sum' [1|_<-a]

sum' :: (Num a) => [a] -> a 
sum' [] = 0
sum' (a:b) = a + sum' b

product' :: (Num a) => [a] -> a
product' [] = 1
product' (a:b) = a * product' b

take' :: (Integral a) => a -> [b] -> [b]
take' 0 (_) = []
take' n (a:b) = a:(take' (n-1) b)

drop' :: (Integral a) => a -> [b] -> [b]
drop' 0 (a) = a
drop' n (_:a) = drop' (n-1) a 

last' :: [a] -> a
last' [] = error "empty list"
last' (a:[]) = a
last' (_:b) = last' b

init' :: [a] -> [a]
init' [] = error "empty list"
init' (a:[]) = [] 
init' (a:b) = a : init' b

zip' :: [a] -> [b] -> [(a,b)]
zip' ([]) (_) = []
zip' (_) ([]) = []
zip' (a:c) (b:e) = (a,b) : (zip' c e)
