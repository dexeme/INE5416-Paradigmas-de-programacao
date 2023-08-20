-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 7. Crie uma função que compute o n-ésimo número de Fibonacci. Leia n do teclado.

main = do
    putStrLn "Digite o numero de Fibonacci: "
    x <- getLine
    let a = (read x :: Int)
    print (fibonacci a)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)
