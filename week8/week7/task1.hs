
--Задача 1. Дадени са numBottles бутилки за вода, които първоначално са пълни. 
--Всеки numExchange празни бутилки могат да бъдат заменени с една пълна бутилка. 
--Ако пълна бутилка бъде изпита, тя става празна. Да се дефинира функция numDrink :: Int -> Int -> Int,
--която приема две естествени числа numBottles и numExchange и намира максималния брой бутилки вода, 
--които могат да бъдат изпити. Да се реализира линеен рекурсивен процес.

main::IO()
main=do
      print $ numDrink   9 3
      print $ numDrink  15 4 
      print $ numDrink 761 3 


numDrink :: Int -> Int -> Int
numDrink numBottles numExchange
    | numBottles <= 0 = 0
    | numBottles < numExchange = numBottles
    | otherwise = numBottles + numDrink (numBottles `div` numExchange) numExchange



