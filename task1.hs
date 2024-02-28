--Задача 1. Да се дефинира функция myMin, която приема два аргумента и връща по-малкия от тях.


main :: IO()
main = do
   print (myMin 3 4)

myMin :: Int -> Int -> Int
myMin a b=
  if a>=b then b
  else a


 