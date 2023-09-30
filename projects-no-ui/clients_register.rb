    clients = {
        1 => {
            name: 'Rafael',
            register_data: '29/09/2023',
            cpf: '123.456.789-10',
        },
        2 => {
            name: 'Julia',
            register_data: '25/09/2023',
            cpf: '123.456.789-11',
        },
        3 => {
            name: 'Maria',
            register_data: '23/09/2023',
            cpf: '123.456.789-12',
        }
    }


    puts "Digite o ID: "

    id_do_cliente = gets.to_i

    cliente = clients[id_do_cliente]

    puts "Buscando informações do cliente ##{id_do_cliente}..."
    sleep 1 # seconds

    if cliente != nil
        puts("Nome: #{cliente[:name]}")
        puts("Data de Registro: #{cliente[:register_data]}")
        puts("Cpf: #{cliente[:cpf]}")
    else
        puts("Cliente não encontrado!")
    end







