--Задача 2. Да се дефинира функция persistence :: Int -> (Int, [Int]), 
--която приема естествено число n и връща наредена двойка от вида (x,ys).
--Вторият елемент на резултата трябва да е списък ys, чийто първи елемент е равен на
--произведението на цифрите на n, а всеки следващ елемент на ys е равен на произведението на 
--цифрите на предходния до получаването на едноцифрено произведение, на което е равен последният 
--елемент на ys. Първият елемент на резултата е равен на дължината x на списъка ys. Намирането на 
--произведението на цифрите на дадено число да се реализира с линейно итеративен процес.

--persistence  39 → (3,[27,14,4])
--persistence 999 → (4,[729,126,12,2])
--persistence 126 → (2,[12,2])
--persistence   4 → (1,[4])

main::IO()
main= do 
    print $ persistence  39 
    print $ persistence  999
    print $ persistence  126
    print $ persistence  4


digitProduct :: Int -> Int
digitProduct n
    | n < 10 = n
    | otherwise = (n `mod` 10) * digitProduct (n `div` 10)

calculatePersistence :: Int -> [Int] -> (Int, [Int])
calculatePersistence n ys
    | n < 10 = (length ys + 1, ys)
    | otherwise = calculatePersistence (digitProduct n) (ys ++ [digitProduct n])

persistence :: Int -> (Int, [Int])
persistence n = calculatePersistence n [n]