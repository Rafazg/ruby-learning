preco_produto = 8.00

puts " Valor do Produto: #{preco_produto}"

puts('Quantos produtos você vai comprar?: ')
quantidade_comprada = gets.to_i

puts('Insira o valor a pagar: ')
dinheiro_recebido = gets.to_f

if dinheiro_recebido > preco_produto
    preco_produto = preco_produto * quantidade_comprada
    troco = dinheiro_recebido - preco_produto
    puts("Troco: R$ #{troco}")
elsif dinheiro_recebido < preco_produto
    puts('dinheiro insuficiente')
end