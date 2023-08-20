-- Aluno: Tiago Siqueira
-- Matricula: 22102193

-- Crie uma função que receba três notas de um aluno (a, b, c), calcule a média e retorne se o aluno foi
-- aprovado ou reprovado. Para um aluno ser aprovado, ele deve possuir nota igual ou superior a 6. Leia as
-- notas dos alunos do teclado

main = do
    putStrLn "Digite a primeira nota: "
    x <- getLine
    putStrLn "Digite a segunda nota: "
    y <- getLine
    putStrLn "Digite a terceira nota: "
    z <- getLine
    let a = (read x :: Float)
    let b = (read y :: Float)
    let c = (read z :: Float)
    print (media a b c)

media :: Float -> Float -> Float -> String
media a b c = if (a+b+c)/3 >= 6 then "Aprovado" else "Reprovado"
