class Biblioteca
    attr_reader :livros
    def initialize()
        @livros = {}
    end

    def adicionar_livros(livro)
        @livros[livro.categoria] ||= []
        @livros[livro.categoria] << livro
    end

    def livros
        @livros.values.flatten
    end

end

