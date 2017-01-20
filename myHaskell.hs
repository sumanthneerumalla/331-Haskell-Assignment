isMember anItem aList = or [anItem == x | x <- aList] 

module Main
     where


main = do
     let aList  = [ 1,2,3,4,5,6 ]
     isMember 4 aList


