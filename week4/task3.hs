 
 --Задача 3. Да се дефинира функция filterNotPrimes :: [Int] -> [Int],
 -- която премахва от подадения списък всички числа, които не са прости.
 main:: IO()
 main=do
    print(filterNotPrimes [1..9])



 isPrime:: Int -> Bool
 isPrime n= [1,n]==[x | x <- [1..n], mod n x==0]


 filterNotPrimes :: [Int] -> [Int]
 filterNotPrimes xs= [x | x <- xs, isPrime x]
 
 
 
 
 
 
 
 

