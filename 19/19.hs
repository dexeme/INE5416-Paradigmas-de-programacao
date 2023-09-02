-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- 19. A conjetura de Goldbach diz que todo número inteiro par maior que 2 pode ser expressado como a soma de
-- dois número primos. Embora ela nunca foi provada ser verdadeira, ela funciona para números grandes.
-- Por exemplo, podemos escrever o número 14 como a soma de 7 e 7, ou 18 como a soma de 5 e 13.
-- Implemente uma função que receba um número n como parâmetro e retorne um dos números primos que
-- fazem parte da soma. Ex: retorne 5 ou 13 para o caso do número 18. Leia n do teclado.

main = do
    putStrLn "Digite um número: "
    n <- getLine
    let n' = (read n :: Int)
    print (goldbach n')

goldbach :: Int -> Int
goldbach n = head [x | x <- [1..n], primo x, primo (n-x)] -- Retorna o primeiro numero primo que somado com outro numero primo resulta em n

-- Funcao primo retirada do exercicio 17/17.hs

primo :: Int -> Bool
primo n = if (length [x | x <- [1..n], n `mod` x == 0]) == 2 then True else False -- Se o tamanho da lista de divisores de n for igual a 2, retorna True, senao retorna False

