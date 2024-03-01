--Задача 8. Да се дефинира предикат isAscending, който връща истина, ако цифрите на дадено естествено число са в нарастващ ред от първата към последната.
main :: IO()
main = do
    print(isAscending 1423)



isAscending:: Int-> Bool
isAscending n=
    if(n<10) then True
      else ((( (mod) n 10) > (mod ((div) n 10) 10)) && (isAscending ((div) n 10))) 