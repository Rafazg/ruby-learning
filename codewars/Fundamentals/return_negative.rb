#* Nesta tarefa simples, você recebe um número e deve torná-lo negativo. Mas talvez o número já seja negativo?
#^ Exemplos
#~ makeNegative(1);  # return -1
#~ makeNegative(-5); # return -5
#~ makeNegative(0);  # return 0
#^ Notas
#* O número já pode ser negativo e, nesse caso, nenhuma alteração é necessária.
#* Zero (0) não é verificado para nenhum sinal específico. Zeros negativos não fazem sentido matemático.

def make_negative(num)
    num > 0 ? -num : num
    end
