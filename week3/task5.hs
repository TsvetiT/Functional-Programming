 --Да се дефинира функция numToDigits :: Int -> [Int], която получава цяло положително число 
 --и връща списък от цифрите му.


main:: IO()
main=do
    print(numToDigits 123)


numToDigits:: Int -> [Int]
numToDigits n=
    if(n<10) then [n]
    else numToDigits (div n 10) ++ [mod n 10]
    

