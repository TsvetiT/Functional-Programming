--Задача 1. Да се дефинира функция merge :: Ord a => [a] -> [a] -> [a], 
--която получава два сортирани списъка и ги обединява така, че резултатът също да е сортиран.
import Data.List
main::IO()
main=do
    print(merge [1..3][2..7])

merge :: Ord a => [a] -> [a] -> [a]
merge xs hs= sort(xs++hs)

