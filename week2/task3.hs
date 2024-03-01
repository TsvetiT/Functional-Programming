--Задача 3. Да се дефинира функция sumDigitsRec, която генерира линейно рекурсивен процес и намира сумата от цифрите на дадено естествено число.

main :: IO()
main = do
    print(sumDigitsRec 5)

sumDigitsRec:: Int -> Int
sumDigitsRec n=
    if(n<10) then n
    else ((mod) n 10)  + sumDigitsRec(((div) n 10))