--Ex de entrada: 
-- somaMaisUm ( Nodo 10 (Nodo 14 (Nodo 1 (Folha 4) (Folha 2)) (Folha 6)) (Folha 9) )

data Arvore = Folha Int | Nodo Int Arvore Arvore
    deriving(Eq,Show)

somaMaisUm :: Arvore -> Arvore
somaMaisUm (Folha n) = Folha(n + 1)
somaMaisUm (Nodo n a1 a2) = Nodo (n + 1) (somaMaisUm a1)
                                         (somaMaisUm a2)