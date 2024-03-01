--Задача 1. Да се дефинира функция myGCD a b, която връща най-големия общ делител на числата a и b.

main :: IO()
main = do
    print(myGCD 12 16)

myGCD:: Int -> Int -> Int
myGCD a b=
    if(b==0) then a
    else myGCD b ((mod) a b)