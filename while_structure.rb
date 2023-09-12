tecla_pressionada = 's'
alunos = []


while tecla_pressionada == 's'
    aluno = {}
    disciplina = {}
    puts('Digite o nome do aluno: ')
    nome_aluno = gets.chomp
    aluno[:nome] = nome_aluno

    puts('Digite a nota do aluno: ')
    nota_aluno = gets.to_i()
    aluno[:nota] = nota_aluno

    puts('Digite a disciplina: ')
    disciplina = gets.chomp
    aluno[:disciplina] = disciplina

    alunos << aluno || disciplina

    puts 'Deseja inserir um novo aluno? s ou n'
    tecla_pressionada = gets.chomp

    puts("#{alunos}")
end
