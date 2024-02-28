--Да се дефинира функция calcAverage, която пресмята на средно аритметичното от квадратите на 2 числа
main :: IO()
main = do
    print(calcAverage 4 4)


calcAverage:: Double -> Double -> Double
calcAverage a b=
    (sqrt(a)+sqrt(b))/2