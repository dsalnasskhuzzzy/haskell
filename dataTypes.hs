data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

data Point = Point Float Float deriving (Show)

data FourPoints = FourPoints { point1 :: Point
		, point2 :: Point
		, point3 :: Point
		, point4 :: Point
		} deriving (Show)

type SuperPoint = [Point]

testFunc :: SuperPoint -> Point
testFunc (x:xs) = x

