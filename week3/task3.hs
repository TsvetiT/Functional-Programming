

--Задача 3. Да се дефинира функция multiplyAllBy :: [Int] -> Int -> [Int], която получава списък
--и число и умножава всеки елемент на списъка по числото.

main::IO()
main=do
    print(multiplyAllBy [1,3] 2)


multiplyAllBy :: [Int] -> Int -> [Int]
multiplyAllBy xs n=
     if null xs then []
     else (head xs * n) : multiplyAllBy (tail xs) n

