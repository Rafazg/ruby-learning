class Livro
    attr_accessor :preco
   def initialize(autor, isbn = "1", numero_de_paginas, preco)
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
   end

   def to_s
    "Autor: #{@autor}\n Isbn: #{@isbn},\n Páginas: #{@numero_de_paginas}"
   end


end

teste_e_design = Livro.new("Mauricio Aniche", "123454", 247, 29.9)
web_design_responsivo = Livro.new("Tárcio Zemel", "452565", 321, 39.9)

puts teste_e_design.preco = 80
