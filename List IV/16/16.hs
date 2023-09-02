-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 16. Crie uma função que receba dois números x e y e retorne se x  ́é divisível por y. Leia x e y do teclado.

main = do
    putStrLn "Digite o valor de x: "
    x <- getLine
    putStrLn "Digite o valor de y: "
    y <- getLine
    let x' = (read x :: Int)
    let y' = (read y :: Int)
    print (divisivel x' y')

divisivel :: Int -> Int -> Bool
divisivel x y = if (x `mod` y) == 0 then True else False -- Se o resto da divisao de x por y for igual a 0, retorna True, senao retorna False