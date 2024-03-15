
--Задача 5. Нека as = [a1, a2, … , ak] и bs = [b1, b2, … , bk] са непразни списъци 
--          с еднакъв брой числа. Да се дефинира предикат isImage :: [Int] -> [Int] -> Bool, 
--          който да връща „истина“ точно когато съществува 
--          такова число x, че ai = x + bi за всяко i = 1,..., k.
main::IO()
main=do
    print(isImage [1..7] [1..7])
    

isImage :: [Int] -> [Int] -> Bool
isImage [_] _ =True
isImage (a1:a2:as)(b1:b2:bs)= a1-b1==a2-b2 && isImage (a2:as)(b2:bs)
           



