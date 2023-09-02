-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- Crie uma função que receba um número n e retorne se o mesmo é primo. Leia n do teclado.

main = do
    putStrLn "Digite um número: "
    n <- getLine
    let n' = (read n :: Int)
    print (primo n')

primo :: Int -> Bool
primo n = if (length [x | x <- [1..n], n `mod` x == 0]) == 2 then True else False -- Se o tamanho da lista de divisores de n for igual a 2, retorna True, senao retorna False
