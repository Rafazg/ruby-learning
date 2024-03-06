hash = {"123454" => teste_e_design,
        "452565" => web_design_responsivo}

for categoria, livros in biblioteca.livros do
        p categoria

        for livro in livros do
                p livro.preco
        end
end