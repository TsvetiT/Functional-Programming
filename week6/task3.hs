--Задача 3. Да се реализира функция insertionSort :: [Int] -> [Int],
-- която реализира сортиране чрез вмъкване върху списък.

import Data.List
main::IO()
main=do
    print(myinsert  5 [1..10])

insertionSort :: [Int] -> [Int]
insertionSort [] = []  
insertionSort (x:xs) = myinsert x (insertionSort xs)  

myinsert :: Int -> [Int] -> [Int]
myinsert x [] = [x]  
myinsert x (y:ys)
    | x <= y = x : y : ys 
    | otherwise = y : myinsert x ys 
    