clients = {
    1 => {
        name: 'Rafael',
        register_date: '09/29/2023',
        cpf: '123.456.789-10',
    },
    2 => {
        name: 'Julia',
        register_date: '09/25/2023',
        cpf: '123.456.789-11',
    },
    3 => {
        name: 'Maria',
        register_date: '09/23/2023',
        cpf: '123.456.789-12',
    }
}

puts "Enter the ID: "

client_id = gets.to_i

client = clients[client_id]

puts "Searching for client information with ID ##{client_id}..."
sleep 1 # seconds

if client != nil
    puts("Name: #{client[:name]}")
    puts("Registration Date: #{client[:register_date]}")
    puts("CPF: #{client[:cpf]}")
else
    puts("Client not found!")
end







