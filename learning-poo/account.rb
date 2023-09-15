class Account
    attr_accessor :number, :balance, :user

    def initialize(number, balance, user)
        @number = number
        @balance = balance
        @user = user
    end

end


def create_account()
    puts('Digite o número da conta: ')
    account_number = gets.to_s

    puts('Digite o saldo da conta: ')
    account_balance = gets.to_i

    puts('Digite o nome do usuário: ')
    account_user = gets.to_s

   return Account.new(account_number, account_balance, account_user)
end


def show_data(account)
    puts'
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
        start_screen(account)
    end
end


account = nil

def start_screen(account)
    
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
    puts '1 - Criar outra conta'
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
            start_screen(account)
        when 2
            system "clear"
            show_data(account)
          
    when 0
        exit
    else
        puts('Opção inválida. Tente novamente.')
    end
end

start_screen(account)