--Задача 2. Да се дефинира функция generatePrimes :: Int -> Int -> [Int], 
--която генерира списък с простите числа в интервала [a,b].

main:: IO()
main=do
    print(generatePrimes 10 20)


generatePrimes :: Int -> Int -> [Int]
generatePrimes start end = helper (0)
    where
        helper prime 
         | start >= end = []
         | not (mod start prime == 0) = prime: helper(start+1)
         | otherwise = helper(start+1)
 