-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- Crie uma função que receba 3 valores numéricos (a, b, c) e retorne o maior deles. Não utilize nenhuma
-- forma de ordenação. Leia os valores a, b, c do teclado.

main = do
    putStrLn "Digite o valor de a: "
    a <- getLine
    putStrLn "Digite o valor de b: "
    b <- getLine
    putStrLn "Digite o valor de c: "
    c <- getLine
    let a' = (read a :: Int)
    let b' = (read b :: Int)
    let c' = (read c :: Int)
    print (maior a' b' c')

maior :: Int -> Int -> Int -> Int
maior a b c = if a > b && a > c then a else if b > a && b > c then b else c

