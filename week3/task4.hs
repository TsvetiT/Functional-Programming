--Да се дефинира filterSmallerThan xs n, която получава списък xs 
--и число n и премахва елементите на списъка xs, които са по-малко от числото n

main:: IO()
main=do
    print(filterSmallerThan [1..10] 3)


filterSmallerThan:: [Int] -> Int -> [Int]
filterSmallerThan xs n =
    [x | x <- xs, x>n]