#* Seus colegas pediram que você copiasse alguns papéis para eles.
#* Você sabe que existem 'n' colegas de classe e a papelada tem 'm' páginas.

#& Sua tarefa é calcular quantas páginas em branco você precisa.
#& Se n < 0ou m < 0retornar 0.

def paperwork(n, m)
   return 0 if n < 0 || m < 0

   n * m
end

puts(paperwork(5, 5))