--Задача 4. Да се дефинира fibRec, която получава един аргумент n и връща n-тото число на Фибоначи, чрез рекурсивен процес. 
main :: IO()
main = do
    print(fibRec 4)

fibRec:: Int->Int
fibRec a=
    if(a<=1) then 1
    else fibRec(a-2)+fibRec(a-1)
