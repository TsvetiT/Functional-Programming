--Задача 2. Дефинирайте безкрайния списък primes :: [Int] на простите числа.


isPrime:: Int -> Bool
isPrime n= [1,n]==[x | x <- [1..n], mod n x==0]
