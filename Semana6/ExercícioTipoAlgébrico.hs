-- :l ExercícioTipoAlgébrico
--Ex de entrada: 
-- multArvore 2 ( Nodo 10 (Nodo 14 (Nodo 1 (Folha 4) (Folha 2)) (Folha 6)) (Folha 9) )

data Arvore = Folha Int | Nodo Int Arvore Arvore
    deriving(Eq,Show)

-- 1
multArvore:: Int -> Arvore -> Arvore
multArvore x (Folha n) = Folha(n * x)
multArvore x (Nodo n a1 a2) = Nodo(n * x) (multArvore x a1)
                                          (multArvore x a2)

-- 2
contaFolhas :: Arvore -> Int
contaFolhas (Folha n) = 1
contaFolhas (Nodo n a1 a2) = (contaFolhas a1) +
                             (contaFolhas a2)

-- 3
contaNodos :: Arvore -> Int
contaNodos (Folha n) = 0
contaNodos (Nodo n a1 a2) = 1 + (contaNodos a1) +
                                (contaNodos a2)

-- 4
quantasVezes :: Int -> Arvore -> Int
quantasVezes x (Folha n) = verificaNum x n
quantasVezes x (Nodo n a1 a2) = verificaNum x n + (quantasVezes x a1) +
                                                  (quantasVezes x a2)

verificaNum :: Int -> Int -> Int
verificaNum a b
    | a == b = 1
    | otherwise = 0

-- 5
maxArvore :: Arvore -> Int
maxArvore (Folha n) = n
maxArvore (Nodo n a1 a2) = maiorDois n (maiorDois (maxArvore a1) (maxArvore a2))

maiorDois :: Int -> Int -> Int 
maiorDois a b
    | a > b = a
    | otherwise = b

-- 6
refleteArvore :: Arvore -> Arvore
refleteArvore (Folha n) = Folha(n)
refleteArvore (Nodo n a1 a2) = Nodo(n) (refleteArvore a2) 
                                       (refleteArvore a1)

-- 7
geraLista :: Arvore -> [Int]
geraLista (Folha n) = n:[]
geraLista (Nodo n a1 a2) = n:[] ++ (geraLista a1) ++ 
                                   (geraLista a2)