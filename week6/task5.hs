--Задача 5. Да се дефинира функция (newtonSqrt x), която пресмята корен квадратен по метода на Нютон с итеративно подобряване на
-- приближението (https://en.wikipedia.org/wiki/Newton%27s_method#Square_root).
main::IO()
main=do
    print (newtonSqrt 0.5) 


newtonSqrt :: Double -> Double
newtonSqrt x = improve 1.0
  where
    improve guess
      | goodEnough guess nextGuess = nextGuess
      | otherwise = improve nextGuess
      where
        nextGuess = (guess + x / guess) / 2
    goodEnough guess nextGuess = abs (guess - nextGuess) < 0.0001