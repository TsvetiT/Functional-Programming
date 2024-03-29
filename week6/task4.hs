
--Задача 4. Да се дефинира функция maximize :: (Ord a, Num a) => [(a -> a)] -> (a -> a),
 --за която оценката на обръщението maximize xs, където xs е 
 --непразен списък от едноместни числови функции, да е едноместна числова функция на аргумент x, 
 --която дава стойността f(x) на тази фунция f от списъка xs, за която числото f(x) е най-голямо
 --по абсолютна стойност.
--Пример: Ако fn = maximize [(\x -> x*x*x),(\x -> x+1)], то fn 0.5 → 1.5, а fn (-2) → -8
import Data.List
fn = maximize [(\x -> x*x*x),(\x -> x+1)]
main::IO()
main=do
    print (fn 0.5) -- извежда 1.5
    print (fn (-2)) -- извежда -8

maximize :: (Ord a, Num a) => [a -> a] -> (a -> a)
maximize [] _ = error "Empty list"
maximize (f:fs) x = maximumByAbs (map ($ x) (f:fs))

maximumByAbs :: (Ord a, Num a) => [a] -> a
maximumByAbs [] = error "Empty list"
maximumByAbs (x:xs) = foldl (\acc y -> if abs y > abs acc then y else acc) x xs