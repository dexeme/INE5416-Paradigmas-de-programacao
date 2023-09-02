-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 1. Crie uma func˜ao que receba dois números x e y e retorne x^y. Leia x e y do teclado.

main = do
    putStrLn "Digite o primeiro numero: "
    x <- getLine
    putStrLn "Digite o segundo numero: "
    y <- getLine
    let a = (read x :: Int)
    let b = (read y :: Int)
    print (potencia a b)

potencia :: Int -> Int -> Int
potencia x y = x^y


