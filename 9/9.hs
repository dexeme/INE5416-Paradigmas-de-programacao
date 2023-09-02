-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 9. Crie uma função que dados dois pontos no espaço 3D, (x1, y1, z1) e (x2, y2, z2), compute a distância
-- entre eles. Leia as posições dos pontos do teclado.

main = do
    putStrLn "Digite o valor de x1: "
    x1 <- getLine
    putStrLn "Digite o valor de y1: "
    y1 <- getLine
    putStrLn "Digite o valor de z1: "
    z1 <- getLine
    putStrLn "Digite o valor de x2: "
    x2 <- getLine
    putStrLn "Digite o valor de y2: "
    y2 <- getLine
    putStrLn "Digite o valor de z2: "
    z2 <- getLine
    let x1' = (read x1 :: Float)
    let y1' = (read y1 :: Float)
    let z1' = (read z1 :: Float)
    let x2' = (read x2 :: Float)
    let y2' = (read y2 :: Float)
    let z2' = (read z2 :: Float)
    print (distancia (x1', y1', z1') (x2', y2', z2'))

distancia :: (Float, Float, Float) -> (Float, Float, Float) -> Float
distancia (x1, y1, z1) (x2, y2, z2) = sqrt((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2)
