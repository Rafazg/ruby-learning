#* Hash, que é um conjunto de pares com uma chave e um valor.
#* com ele, podemos nomear nossos atributos, como um dicionário.


#& carro = {nome: 'Siena', valor: '25.000', marca: 'Fiat'}

#& puts "nome do carro: #{carro[:nome]}, marca: #{carro [:marca]}, valor: #{carro[:valor]} "

#* Utilizando a estrutura de hash, crie variáveis de alunos que possuem os seguintes atributos: nome, nota e disciplina.
#* Por exemplo: alberto = { nome: 'Alberto', nota: 7, disciplina: 'Artes' }.
#* Em seguida, crie um array de alunos chamados alunos e o popule com os alunos criados.
#* Utilize o que você aprendeu até agora para resgatar
#* do array e imprimir na tela o nome do aluno, seguido da sua nota e a disciplina.

alunos = [
    {nome: 'Julia', nota: '8', disciplina: 'Português'},
    {nome: 'Rafael', nota: '6.5', disciplina: 'Matematica'},
    {nome: 'Marcos', nota: '6', disciplina: 'Geografia'}
]

puts("#{alunos[0][:nome]}, tirou nota #{alunos[0][:nota]} na disciplina de #{alunos[0][:disciplina]}")
puts("#{alunos[1][:nome]}, tirou nota #{alunos[1][:nota]} na disciplina de #{alunos[1][:disciplina]}")
puts("#{alunos[2][:nome]}, tirou nota #{alunos[2][:nota]} na disciplina de #{alunos[2][:disciplina]}")

