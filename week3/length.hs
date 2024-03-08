main :: IO()
main = do
    print(count [2..3])

count::[Int] -> Int
count xs =
   if null xs then 0
   else 1 + count(tail xs)