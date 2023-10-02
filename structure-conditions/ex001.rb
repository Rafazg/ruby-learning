puts ('Insira a nota do primeiro semestre: ')
nota_primeiro_semestre = gets.to_f

puts ('Insira a nota do segundo semestre: ')
nota_segundo_semestre = gets.to_f

def finalNote(n1, n2)
    result = n1 + n2

    if result < 60.00
        puts(" Sua nota final foi :#{result}: Reprovado")
    else
        puts("Sua nota final foi: #{result}: Aprovado")
    end
end

finalNote(nota_primeiro_semestre, nota_segundo_semestre)