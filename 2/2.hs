-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 2.  Crie uma função que receba um número x negativo ou positivo, e retorne seu valor absoluto. Leia x do teclado.

main = do
    putStrLn "Digite um numero: "
    x <- getLine
    let a = (read x :: Int)
    print (absoluto a)

absoluto :: Int -> Int
absoluto x = if x < 0 then x*(-1) else x -- Se x for menor que 0, retorna x*(-1), senao retorna x
