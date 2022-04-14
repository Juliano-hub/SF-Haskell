data B = TRUE | FALSE | Not B | And B B | Or B B
   deriving (Eq,Show)


-- Implementar o prog1 como sendo a expressão: TRUE && FALSE || TRUE

-- prog1 :: B
-- prog1 = TRUE && (FALSE || TRUE)


-- Implementar o prog2 como sendo a expressão: TRUE && FALSE || FALSE && TRUE 

-- prog2 :: B
-- prog2 = (TRUE && FALSE) || (FALSE && TRUE) 

-- A função bigStepB recebe como entrada uma expressão booleana na nossa linguagem,
-- e devolve um booleano do Haskell (o resultado da avaliação da expressão de entrada):

bigStepB :: B -> Bool
bigStepB TRUE = True
bigStepB FALSE = False
-- As duas regras do Not, estão nestes dois casos:
bigStepB (Not b)
  | bigStepB b == True    = False
  | otherwise            = True
-- Seguindo o que foi feito nas regras do Not, implementar o And e o Or:
bigStepB (And b1 b2) 
  | bigStepB b1 == True && bigsStepB b2 == True = True
  | otherwise = False
bigStepB (Or b1 b2) 
  | bigStepB b1 == False && bigsStepB b2 == False = False
  | otherwise = True