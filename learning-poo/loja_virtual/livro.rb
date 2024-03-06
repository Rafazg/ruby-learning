require File.expand_path('learning-poo/loja_virtual/lib/biblioteca')
require 'set'
class Livro
    attr_accessor :preco
    attr_reader :autor, :categoria, :isbn
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

   def eql?(outro_livro)
    @isbn == outro_livro.isbn
   end

   def hash
    @isbn.hash
   end




end

biblioteca = Biblioteca.new

teste_e_design = Livro.new("Mauricio Aniche", "123454", 247, 29.9, :testes)

web_design_responsivo = Livro.new("Tárcio Zemel", "523454", 321, 39.9, :web_design)

jsf_e_jpa = Livro.new("Gilliard Cordeiro", "543465", 234, 64.9, :frameworks_mvc)

p teste_e_design.eql? jsf_e_jpa

########################################################
#
# biblioteca.livros.each_with_index do |livro, index| 
#     puts "Posição: #{index}\n Livro #{livro}"
# end
########################################################

biblioteca.adicionar_livros(teste_e_design)

biblioteca.adicionar_livros(web_design_responsivo)

livros = Set.new [teste_e_design, web_design_responsivo, jsf_e_jpa]



for livro in livros do
    puts livro
end



hash = {testes: [teste_e_design],
        web_design: [web_design_responsivo] } 


# puts hash[:web_design]

#~: operador ||=
# idade = nil
# idade ||= 27
# puts idade 


#~: O tipo Set



        