class Account
    attr_accessor :number, :balance, :user

    def initialize(number, balance, user)
        @number = number
        @balance = balance
        @user = user
    end
end

accounts = []

def create_account
    puts('Digite o número da conta: ')
    account_number = gets.chomp  

    puts('Digite o saldo da conta: ')
    account_balance = gets.to_i

    puts('Digite o nome do usuário: ')
    account_user = gets.chomp  

    return Account.new(account_number, account_balance, account_user)
end

def show_data(accounts)
    puts 'Escolha uma conta para ver os dados:'
    accounts.each_with_index do |account, index|
        puts "#{index + 1} - Número da conta: #{account.number}"
    end

    selection = gets.to_i - 1 

    if selection >= 0 && selection < accounts.length
        account = accounts[selection]

        puts '
        ██████╗  █████╗ ██████╗  ██████╗ ███████╗
        ██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██╔════╝
        ██║  ██║███████║██║  ██║██║   ██║███████╗
        ██║  ██║██╔══██║██║  ██║██║   ██║╚════██║
        ██████╔╝██║  ██║██████╔╝╚██████╔╝███████║
        ╚═════╝ ╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚══════╝
                                             
        '
        puts("Número da conta: #{account.number}")
        puts("Saldo da conta: #{account.balance}")
        puts("Nome do usuário: #{account.user}")
        puts '-------------------------------------'
        puts('0 - Voltar')

        result = gets.to_i

        if result == 0
            start_screen(accounts)
        end
    else
        puts('Seleção inválida. Tente novamente.')
    end
end

def start_screen(accounts)
    system "clear"

    puts '
    ██╗    ██╗███████╗██╗      ██████╗ ██████╗ ███╗   ███╗███████╗
    ██║    ██║██╔════╝██║     ██╔════╝██╔═══██╗████╗ ████║██╔════╝
    ██║ █╗ ██║█████╗  ██║     ██║     ██║   ██║██╔████╔██║█████╗  
    ██║███╗██║██╔══╝  ██║     ██║     ██║   ██║██║╚██╔╝██║██╔══╝  
    ╚███╔███╔╝███████╗███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗
    ╚══╝╚══╝ ╚══════╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝
                                                          
    '

    puts '-------Escolha uma das seguintes opções-------'
    puts '1 - Criar conta'
    puts '2 - Ver Dados da Conta'
    puts '0 - Sair'

    result = gets.to_i

    case result
    when 1
        system "clear"
        puts '
        ██████╗██████╗ ███████╗ █████╗ ████████╗███████╗
        ██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝
        ██║     ██████╔╝█████╗  ███████║   ██║   █████╗  
        ██║     ██╔══██╗██╔══╝  ██╔══██║   ██║   ██╔══╝  
        ╚██████╗██║  ██║███████╗██║  ██║   ██║   ███████╗
        ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                                            
        '
        account = create_account()
        accounts.push(account)
        start_screen(accounts)
    when 2
        show_data(accounts)
    when 0
        exit
    else
        puts('Opção inválida. Tente novamente.')
    end
end

start_screen(accounts)
