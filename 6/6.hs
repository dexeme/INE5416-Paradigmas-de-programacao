-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- Crie uma função que receba três inteiros x, y e z e retorne se havendo varetas com esses valores em
-- comprimento pode-se construir um triângulo. Exemplo, com varetas de comprimento 4, 8 e 9 posso
-- construir um triângulo, porém com varetas de comprimento 10, 5 e 4 n˜ao posso construir um triângulo.
-- Leia x, y e z do teclado.

main = do
    putStrLn "Digite o primeiro numero: "
    x <- getLine
    putStrLn "Digite o segundo numero: "
    y <- getLine
    putStrLn "Digite o terceiro numero: "
    z <- getLine
    let a = (read x :: Int)
    let b = (read y :: Int)
    let c = (read z :: Int)
    print (triangulo a b c)

triangulo :: Int -> Int -> Int -> Bool
triangulo x y z = if (x+y) > z && (x+z) > y && (y+z) > x then True else False
