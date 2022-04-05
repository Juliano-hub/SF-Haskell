-- Juliano Strelow Buss

--1
multLista :: Int -> [Int] -> [Int]
multLista y [] = []
multLista y (x:xs) = y*x : multLista y xs


--2
elemento :: Int -> [Int] -> Bool
elemento y [] = False
elemento y (x:xs)
    | y == x = True
    | otherwise = elemento y xs


--3
--conta :: Int -> [Int] -> Int
--conta y [] = 0
--conta y (x:xs)
--    | y == x = aux + 1
--    | y /= x = elemento y xs
--    | otherwise = aux


--7
addFim :: Int -> [Int] -> [Int]
addFim y [] = y : []
addFim y [x:xs]
    |