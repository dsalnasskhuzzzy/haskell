targetFunction x = x^2
builtSet x y = [(targetFunction z)| z<-[x..y]]

triangle = [(a,b,c) | c<-rangeArr, b<-rangeArr, a<-rangeArr, a^2+b^2==c^2]
rangeArr = [1..100]
