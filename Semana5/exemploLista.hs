-- Ex de entrada: somaLista [1, 2, 3, 4, 5]

somaLista :: [Int] -> Int                   -- Recebe uma lista
somaLista [] = 0                            -- Caso a lista for vazia
somaLista (x:xs) = x + somaLista xs         -- xs é o resto da lista