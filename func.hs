targetFunction x = x^2
builtSet x y = [(targetFunction z)| z<-[x..y]]

triangle range = [(a,b,c) | c<-range, b<-range, a<-range, a^2+b^2==c^2]
rangeArr = [1..100]
