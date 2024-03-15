--Задача 4. Да се дефинира функция isAscending :: Int -> Bool, която проверява дали цифрите на число са във възходящ ред.
-- Функцията да получава число, но да работи със списък от цифрите му.
main::IO()
main=do
    print(isAscending 456)
    print(isAscending 321)

isAscending :: Integer -> Bool
isAscending n = helper (numToDigits n)
  where
   numToDigits :: Integer -> [Integer]
   numToDigits 0 = []
   numToDigits x = numToDigits (x `div` 10) ++ [x `mod` 10]
  
   helper :: [Integer] -> Bool
   helper [] = True 
   helper [_] = True 
   helper (x:y:xs) = x <= y && helper (y:xs)