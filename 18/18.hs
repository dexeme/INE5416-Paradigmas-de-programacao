-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 18. Crie uma função que receba três parâmetros Operador, x e y, e retorne o resultado da operação matemática
-- x Operador y. Os operadores possíveis de informar são +, -, *, /. Leia o Operador, x e y do teclado.

main = do
    putStrLn "Digite o operador (+, -, *, /): "
    op <- getLine
    putStrLn "Digite o valor de x: "
    x <- getLine
    putStrLn "Digite o valor de y: "
    y <- getLine
    let x' = (read x :: Float)
    let y' = (read y :: Float)
    print (calcula op x' y')

calcula :: String -> Float -> Float -> Float
calcula op x y = if op == "+" then x + y else if op == "-" then x - y else if op == "*" then x * y else if op == "/" then x / y else 0