--1
palindromo :: String -> Bool -- colocar string que for passada como parâmetro entre "", ex: palindromo "ovo"
palindromo palavra = ( palavra == ( reverse palavra ) )


--2
verificaTriangulo :: Int -> Int -> Int -> Bool
verificaTriangulo a b c
    | (a + b) > c && (a + c) > b = True     -- if(x <= y){}
    | otherwise = False             -- else{}


--3
sinal :: Int -> Int
sinal a
    | a < 0 = -1    -- para parâmetro negativo colocar entre parênteses, ex: sinal (-1)
    | a > 0 = 1
    | otherwise = 0   


--4
menorTres :: Int -> Int -> Int -> Int
menorTres a b c
        | menorDois a b < menorDois b c = menorDois a b
        | otherwise = menorDois b c

menorDois :: Int -> Int -> Int 
menorDois a b
    | a < b = a
    | otherwise = b


--5
potencia :: Int -> Int -> Int
potencia a 1 = a
potencia a b = a * potencia a (b-1)