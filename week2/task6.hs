
--Задача 6.Да се дефинира функция pow, която генерира линейно рекурсивен процес и намира x на степен n, където x е реално, а n - естествено число.
main :: IO()
main = do
    print(pow 3.5 3)


pow:: Double -> Int -> Double
pow x n=
    x^n