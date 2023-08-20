-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 8. Crie uma função que resolva uma equação de segundo grau da forma ax2 + bx + c utilizando a fórmula
-- de Bhaskara. Leia os coeficientes a, b e c do teclado.

main = do
    putStrLn "Digite o coeficiente a: "
    x <- getLine
    putStrLn "Digite o coeficiente b: "
    y <- getLine
    putStrLn "Digite o coeficiente c: "
    z <- getLine
    let a = (read x :: Float)
    let b = (read y :: Float)
    let c = (read z :: Float)
    print (bhaskara a b c)

bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c = (((-b) + sqrt(b^2 - 4*a*c))/(2*a), ((-b) - sqrt(b^2 - 4*a*c))/(2*a))