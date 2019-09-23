doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if isSmallNumber x
    then doubleMe x
    else x

isSmallNumber x = if x > 100
    then False
    else True

removeIfContainedIn xs y = [x | x <- xs, not (x `elem` y)]

triangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24 ]

lastElement x = x !! (length x - 1)