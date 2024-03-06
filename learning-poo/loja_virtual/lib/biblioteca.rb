class Biblioteca
    attr_reader :livros
    def initialize()
        @livros = []
    end

    def adicionar_livros(livro)
        @livros << livro
    end

end

