#* Utilizando o array de alunos criado no exercício anterior,
#* crie uma estrutura de condição
#* para cada aluno que avalie se sua nota foi inferior a 5 e imprima a situação. 
#* Considerando o exemplo da atividade anterior, se o aluno estivesse aprovado
#*  (nota maior ou igual a 5),
#* a seguinte frase deveria ser impressa: “Alberto foi aprovado(a) em Artes”.
#* Se estivesse reprovado, seria impressa a frase “Alberto foi reprovado(a) em Artes”.

alunos = [
    {nome: 'Julia', nota: 8, disciplina: 'Português'},
    {nome: 'Rafael', nota: 6.5, disciplina: 'Matemática'},
    {nome: 'Marcos', nota: 4.5, disciplina: 'Geografia'}
]

puts('Qual o nome do aluno?')
name = gets.chomp

def resultado(alunos, nome)
    aluno_encontrado = nil
    
    # Procura o aluno na lista pelo nome
    alunos.each do |aluno|
        if aluno[:nome] == nome
            aluno_encontrado = aluno
            break
        end
    end
    
    if aluno_encontrado
        if aluno_encontrado[:nota] >= 5
            puts("#{aluno_encontrado[:nome]} foi aprovado(a) em #{aluno_encontrado[:disciplina]}")
        else
            puts("#{aluno_encontrado[:nome]} foi reprovado(a) em #{aluno_encontrado[:disciplina]}")
        end
    else
        puts("Aluno #{nome} não encontrado na lista.")
    end
end

resultado(alunos, name)