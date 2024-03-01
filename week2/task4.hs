--Задача 4. Да се дефинира функция sumDigitsIter, която генерира линейно итеративен процес и намира сумата от цифрите на дадено естествено число.
main :: IO()
main = do
    print(sumDigitsIter 222)


sumDigitsIter:: Int-> Int
sumDigitsIter n= helper 0 n
 where
    helper res k=
     if(k<10) then res + k
     else helper (res+(mod)k 10)((div)k 10)
