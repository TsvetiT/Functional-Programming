--Задача 2. Да се дефинира функция insert :: Int -> [Int] -> [Int], 
--която добавя елемент в сортиран списък, като резултатният списък също е сортиран.
import Data.List
main::IO()
main=do
    print(myinsert 5 [2..7])

myinsert :: Int -> [Int] -> [Int]
myinsert x [] = [x]  
myinsert x (y:ys)
    | x <= y = x : y : ys 
    | otherwise = y : myinsert x ys 