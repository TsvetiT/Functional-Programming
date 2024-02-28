--Задача 2. Да се дефинира функцията isInside x a b, която проверява дали числото x се намира в затворения интервал [a, b].
main :: IO()
main = do
    print(inSide 2 1 5)


inSide:: Int -> Int -> Int -> Bool 
inSide x a b=
    if(a<=x && x<=b) then True
    else False