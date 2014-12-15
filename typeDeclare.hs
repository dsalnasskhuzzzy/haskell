removeUppercase :: [Char]->[Char]
removeUppercase string = [char | char<-string, elem char ['a'..'z']]

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

