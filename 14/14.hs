-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- Crie uma função que receba dois números x e y e determine se eles são coprimos. Dois números são ditos
-- coprimos se o máximo divisor comum entre eles ́e 1. Leia x e y do teclado.

main = do
    putStrLn "Digite o valor de x: "
    x <- getLine
    putStrLn "Digite o valor de y: "
    y <- getLine
    let x' = (read x :: Int)
    let y' = (read y :: Int)
    print (coprimos x' y')

coprimos :: Int -> Int -> Bool
coprimos x y = if (mdc x y) == 1 then True else False -- Se o mdc de x e y for igual a 1, retorna True, senao retorna False