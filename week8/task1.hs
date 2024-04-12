import Data.Char
main::IO()
main=do
    print $ normalize "Attack London tomorrow at ten a.m."
    print $ normalize "Attack London tomorrow at 10 a.m." 


normalize:: String->String
normalize xs=
    if any isDigit xs then error "Invalid"
    else [toUpper x| x <- xs, isLetter x]
