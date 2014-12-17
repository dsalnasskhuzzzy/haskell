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

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = (f x y) : (zipWith' f xs ys)

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = (f x) : (map' f xs)

foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f accu (x:[]) = f accu x
foldl' f accu (x:xs) = foldl' f (f accu x) xs

foldr' :: (a -> b -> a) -> a -> [b] -> a
foldr' f accu (x:[]) = f accu x
foldr' f accu xs = foldr' f (f accu (last' xs)) (init xs)
