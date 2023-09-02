-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- Crie uma função que receba dois números x e y e retorne o mínimo múltiplo comum (DICA: use a função
-- do máximo divisor comum já criada). Leia x e y do teclado.

main = do
    putStrLn "Digite o valor de x: "
    x <- getLine
    putStrLn "Digite o valor de y: "
    y <- getLine
    let x' = (read x :: Int)
    let y' = (read y :: Int)
    print (mmc x' y')

mmc :: Int -> Int -> Int
mmc x y = (x*y) `div` (mdc x y) -- Retorna o mmc de x e y

