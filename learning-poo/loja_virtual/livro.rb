require File.expand_path('learning-poo/loja_virtual/lib/biblioteca')
class Livro
    attr_accessor :preco
    attr_reader :autor, :categoria
   def initialize(autor, isbn = "1", numero_de_paginas, preco, categoria )
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
    @categoria = categoria
   end

   def to_s
    "Autor: #{@autor}\n Isbn: #{@isbn}\n Páginas: #{@numero_de_paginas}\n Categoria: #{@categoria}"
   end


end

biblioteca = Biblioteca.new

teste_e_design = Livro.new("Mauricio Aniche", "123454", 247, 29.9, :testes)

web_design_responsivo = Livro.new("Tárcio Zemel", "452565", 321, 39.9, :web_design)

jsf_e_jpa = Livro.new("Gilliard Cordeiro", "543465", 234, 64.9, :frameworks_mvc)


########################################################
#
# biblioteca.livros.each_with_index do |livro, index| 
#     puts "Posição: #{index}\n Livro #{livro}"
# end
########################################################

biblioteca.adicionar_livros(teste_e_design)

biblioteca.adicionar_livros(web_design_responsivo)

hash = {}
hash[:testes]=[[ teste_e_design ] ]
hash[:web_design] = [ [ web_design_responsivo ] ]
hash[:frameworks_mvc] = [ [ jsf_e_jpa ] ]

puts hash.values.flatten


        