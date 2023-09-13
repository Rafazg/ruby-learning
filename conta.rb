require_relative 'cliente'
#* Programa que mostre as opções de mostrar o saldo, titular e número da conta.

class Conta
    attr_reader :numero, :titular
    attr_accessor :saldo

    def initialize(numero, titular, saldo)
        @numero = numero
        @titular = titular
        @saldo = saldo
    end

    def depositar(valor)
        self.saldo += valor
    end

    def sacar(valor)
        if saldo >= valor
            self.saldo -= valor
            true
        else
            puts('Não foi possivel executar o saque')
        end
    end

    def transferir(conta_destino, valor)
        if sacar(valor)
        conta_destino.depositar(valor)
        else
            puts('Não foi possivel executar a transferencia')
        end
    end 
end  

conta = Conta.new(1, 'Rafael Silva', 1500)

def criar_conta()

  def mostrar_saldo_outra_conta(outra_conta)
    puts "Saldo da conta: #{outra_conta.saldo}"
  end
  
  def mostrar_titular_outra_conta(outra_conta)
    puts "Titular da conta: #{outra_conta.titular}"
  end
  
  def mostrar_numero_outra_conta(outra_conta)
    puts "Número da conta: #{outra_conta.numero}"
  end


  outra_conta = Conta.new(2, nome_conta, 1600)


  loop do
    puts '---------------------Criação de Conta---------------------'
    puts
    puts
    puts '-------Escolha uma das seguintes opções-------'
    puts '1 - Criar Nome'
    puts '2 - Criar Número '
    puts '3 - Saldo Inicial'
    puts '4 - Criar outra conta'
    puts '0 - Sair'

    result = gets.to_i

    case result
    when 1
      system "clear"
      puts('-------INFO-------')
      nome_conta = gets.to_s
    when 2
      system "clear"
      puts('-------INFO-------')
      1.times do
          puts('-')
      end
      mostrar_titular_outra_conta(outra_conta)
          puts('-')
    when 3
      system "clear"
      puts('-------INFO-------')
      2.times do
          puts('-')
      end
      mostrar_numero_outra_conta(outra_conta)
    when 0
      break
    else
      puts 'Opção inválida. Tente novamente.'
    end

  end

end

def mostrar_saldo(conta)
  puts "Saldo da conta: #{conta.saldo}"
end

def mostrar_titular(conta)
  puts "Titular da conta: #{conta.titular}"
end

def mostrar_numero_conta(conta)
  puts "Número da conta: #{conta.numero}"
end

loop do
  puts '-------Escolha uma das seguintes opções-------'
  puts '1 - Ver Saldo'
  puts '2 - Ver Titular'
  puts '3 - Ver Número'
  puts '4 - Criar outra conta'
  puts '0 - Sair'

  result = gets.to_i

  case result
  when 1
    system "clear"
    puts('-------INFO-------')
    mostrar_saldo(conta)
    2.times do
        puts('-')
    end

  when 2
    system "clear"
    puts('-------INFO-------')
    1.times do
        puts('-')
    end
    mostrar_titular(conta)
        puts('-')
  when 3
    system "clear"
    puts('-------INFO-------')
    2.times do
        puts('-')
    end
    mostrar_numero_conta(conta)
  when 4
    
    puts('conta criada')
    system "clear"
    criar_conta()
    
    break
  when 0
    break
  else
    puts 'Opção inválida. Tente novamente.'
  end
end