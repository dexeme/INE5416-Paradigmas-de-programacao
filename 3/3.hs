-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 3 Crie uma função que receba a base e a altura de um triângulo e calcule a área do mesmo. Leia a base e a altura do teclado.

main = do
    putStrLn "Digite a base do triangulo: "
    x <- getLine
    putStrLn "Digite a altura do triangulo: "
    y <- getLine
    let a = (read x :: Float)
    let b = (read y :: Float)
    print (areaTriangulo a b)

areaTriangulo :: Float -> Float -> Float
areaTriangulo x y = (x*y)/2
