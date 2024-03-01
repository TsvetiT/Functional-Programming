--Задача 2. Да се дефинира функция countDigits, която генерира линейно рекурсивен процес и намира броя на цифрите на дадено естествено число.
main :: IO()
main = do
    print(countDigit 122)

countDigit:: Int -> Int
countDigit n  =
    if(n<10) then 1
    else 1+ countDigit((div) n 10)