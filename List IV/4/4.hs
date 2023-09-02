-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 4. Crie uma função que receba dois valores booleanos (x, y) retorne o resultado do “ou exclusivo” (XOR)
-- sobre eles. A função apenas deve usar os operadores &&, || e not. Leia os valores x e y do teclado.

main = do
    putStrLn "Digite o primeiro valor booleano: "
    x <- getLine
    putStrLn "Digite o segundo valor booleano: "
    y <- getLine
    let a = (read x :: Bool)
    let b = (read y :: Bool)
    print (xor a b)

xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y) -- x ou y e nao (x e y) (ou exclusivo)