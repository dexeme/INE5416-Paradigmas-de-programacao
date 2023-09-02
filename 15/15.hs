-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 15. Crie uma função que receba um número n e retorne a função totiente de Euler (φ(n)). A função totiente
-- de Euler  ́e dada pelo número de inteiros positivos r a partir de 1 e menores que n, ou seja 1 <= r < n,
-- que são coprimos de n. Por exemplo, se n = 10, então os coprimos de 10 de 1 até 10-1 são {1,3,7,9} e
-- a função deve retornar φ(n) = 4. Leia n do teclado.

main = do
    putStrLn "Digite o valor de n: "
    n <- getLine
    let n' = (read n :: Int)
    print (totiente n')

totiente :: Int -> Int
totiente n = length [x | x <- [1..n-1], coprimos x n] -- Retorna o tamanho da lista de numeros coprimos de n

coprimos :: Int -> Int -> Bool
coprimos x y = if (mdc x y) == 1 then True else False -- Se o mdc de x e y for igual a 1, retorna True, senao retorna False

mdc :: Int -> Int -> Int
mdc x y = if y == 0 then x else mdc y (x `mod` y) -- Se y for igual a 0, retorna x, senao retorna mdc y (x mod y)