--Задача 1. Да се дефинира функция divisors :: Integer -> [Integer],
-- която генерира списък от всички (собствени) делители на дадено число.

main:: IO()
main=do
    print(divisors 10)

divisors :: Integer -> [Integer]
divisors n = helper 1
 where
    helper devider
       |devider==n = [] 
       |mod n devider==0 = devider: helper (devider+1)
       |otherwise = helper (devider+1)

