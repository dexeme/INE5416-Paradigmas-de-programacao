-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 11. Crie uma função que receba dois números x e y e retorne o máximo divisor comum (DICA: pesquise sobre
-- o Algoritmo de Euclides). Leia x e y do teclado

main = do
    putStrLn "Digite o valor de x: "
    x <- getLine
    putStrLn "Digite o valor de y: "
    y <- getLine
    let x' = (read x :: Int)
    let y' = (read y :: Int)
    print (mdc x' y')

mdc :: Int -> Int -> Int
mdc x y = if y == 0 then x else mdc y (x `mod` y) -- Se y for igual a 0, retorna x, senao retorna mdc y (x mod y)
