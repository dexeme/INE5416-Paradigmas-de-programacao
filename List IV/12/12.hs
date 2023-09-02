-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 12. Crie uma função que receba três números x, y e z e retorne o máximo divisor comum (DICA: apenas
-- modifique o algoritmo anterior). Leia x, y e z do teclado.

main = do
    putStrLn "Digite o valor de x: "
    x <- getLine
    putStrLn "Digite o valor de y: "
    y <- getLine
    putStrLn "Digite o valor de z: "
    z <- getLine
    let x' = (read x :: Int)
    let y' = (read y :: Int)
    let z' = (read z :: Int)
    print (mdc3 x' y' z')

mdc3 :: Int -> Int -> Int -> Int
mdc3 x y z = mdc (mdc x y) z -- Retorna o mdc de x, y e z

-- Algoritmo da questao 11/11.hs:

mdc :: Int -> Int -> Int
mdc x y = if y == 0 then x else mdc y (x `mod` y) -- Se y for igual a 0, retorna x, senao retorna mdc y (x mod y)