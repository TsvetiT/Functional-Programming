
main :: IO()
main = do
   print (myMin 3 4)

myMin :: Int -> Int -> Int
myMin a b=
  if a>=b then b
  else a


 