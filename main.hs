module Main where


myElem :: Eq a => a -> [a] -> Bool
myElem anItem [] = False
myElem anItem (element:elements) | anItem == element = True
	 			   | otherwise = myElem anItem elements

aList = [ 1,2,3,4,5 ]

myReplicate :: Int -> a -> [a]
myReplicate someInt someThing 
	    | someInt <=0 = []
	    | otherwise = someThing:myReplicate (someInt -1) someThing

halve :: [a] -> ([ a], [a])
halve someList
      | length(someList) == 0 = ([],[])
      | length(someList) == 1 = (someList,[])
      | length(someList) == 2 = (someList !! 0 : [], someList !! 1 : [])
      | otherwise = (take( length(someList) `div` 2) someList, drop ( length (someList) `div` 2) someList)


pyths :: Int -> [( Int, Int, Int)]
pyths x = [(a,b,c)|a<-[1..x], b<-[1..x], c<-[1..x], (a^2)+(b^2) == (c^2)]


merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) 
      | (x <= y)  = x:(merge xs (y:ys)) 
      | otherwise = y:(merge (x:xs) ys)


mergesort :: Ord a => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (fst( halve xs))) (mergesort (snd (halve xs)))



main = putStrLn "Hello World"