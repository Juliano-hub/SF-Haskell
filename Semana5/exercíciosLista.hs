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
conta :: Int -> [Int] -> Int
conta y [] = 0
conta y (x:xs)
    | y == x = 1 + (conta y xs)
    | otherwise = conta y xs


--4
contaMaiores :: Int -> [Int]-> Int
contaMaiores y [] = 0
contaMaiores y (x:xs)
    | y < x = 1 + (contaMaiores y xs)
    | otherwise = contaMaiores y xs


--5
maiores :: Int -> [Int] -> [Int]
maiores y [] = []
maiores y (x:xs)
    | y < x = (x:[]) ++ (maiores y xs)
    | otherwise = maiores y xs


--6
geraLista :: Int -> Int -> [Int]
geraLista 0 n = []
geraLista m n = n:[] ++ geraLista (m-1) n


--7
addFim :: Int -> [Int] -> [Int]
addFim y [] = y : []
addFim y (xs) = (xs) ++ (y : [])