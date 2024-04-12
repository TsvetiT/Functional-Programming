
import Data.List
import Distribution.Compat.Prelude (isDigit)
--Задача 3. Разглеждаме числата от редицата на Фибоначи (индексирана от 0): 
--0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, …
--Дефинирайте:

--а. функция fibIter :: Integer -> Integer, която генерира n-тото число от 
--редицата на Фибоначи посредством линеен итеративен процес.





fibIter :: Integer -> Integer
fibIter n = helper 0 1 n
   where
    helper :: Integer -> Integer -> Integer -> Integer
    helper a _ 0 = a
    helper a b count = helper b (a + b) (count - 1)

-- б. функция splitEvery :: Int -> [a] -> [[a]], която разбива полученото число на подгрупи
-- с дължина k (групата, образувана от най-младшите (най-десните) цифри,
--може да е с дължина, по-малка от k). Възможно е група да започва с 0

splitEvery :: Int -> [a] -> [[a]]
splitEvery _ [] = []  -- Ако списъкът е празен, връщаме празен списък
splitEvery k xs = take k xs : splitEvery k (drop k xs)


countDigits :: String -> [(Char, Int)]
countDigits str = map (\x -> (head x, length x)) $ group $ sort $ filter (`elem` ['0'..'9']) str

process :: String -> (Char, Int)
process str = minimumBy (\x y -> if snd x == snd y then compare (fst x) (fst y) else compare (snd x) (snd y)) $ map (\x -> maximumBy (\y z -> if snd y == snd z then compare (fst y) (fst z) else compare (snd y) (snd z)) (countDigits x)) $ groupBy (\x y -> isDigit x && isDigit y) str

