require_relative 'cliente'

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
      false
    end
  end

  def transferir(conta_destino, valor)
    if sacar(valor)
      conta_destino.depositar(valor)
      true
    else
      false
    end
  end
end

def criar_conta
  system 'clear'
  puts '
  ____ ____  _____    _  _____ _____ 
 / ___|  _ \| ____|  / \|_   _| ____|
| |   | |_) |  _|   / _ \ | | |  _|  
| |___|  _ <| |___ / ___ \| | | |___ 
 \____|_| \_\_____/_/   \_\_| |_____|
                                   
 '
  puts
  puts 'Digite o nome: '
  nome_conta = gets.chomp

  puts 'Digite o número: '
  numero_conta = gets.to_i

  puts 'Insira o saldo inicial: '
  saldo_conta = gets.to_i

  return Conta.new(numero_conta, nome_conta, saldo_conta)
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

def tela_inicial
  conta = nil

  loop do
    system 'clear'
    puts '
    _    _ _____ _     _____ ________  ___ _____ 
   | |  | |  ___| |   /  __ \  _  |  \/  ||  ___|
   | |  | | |__ | |   | /  \/ | | | .  . || |__  
   | |/\| |  __|| |   | |   | | | | |\/| ||  __| 
   \  /\  / |___| |___| \__/\ \_/ / |  | || |___ 
    \/  \/\____/\_____/\____/\___/\_|  |_/\____/ 
                                                 
                                                 
   '
    puts '-------Escolha uma das seguintes opções-------'
    puts '1 - Ver Contas'
    puts '2 - Ver Titular'
    puts '3 - Ver Número'
    puts '4 - Criar outra conta'
    puts '0 - Sair'

    result = gets.to_i

    case result
    when 1
      system 'clear'
      if conta.nil?
        puts('Conta não criada. Crie uma conta primeiro.')
      else
        mostrar_saldo(conta)
      end
    when 2
      system 'clear'
      if conta.nil?
        puts('Conta não criada. Crie uma conta primeiro.')
      else
        mostrar_titular(conta)
      end
    when 3
      system 'clear'
      if conta.nil?
        puts('Conta não criada. Crie uma conta primeiro.')
      else
        mostrar_numero_conta(conta)
      end
    when 4
      system 'clear'
      conta = criar_conta
    when 0
      break
    else
      puts 'Opção inválida. Tente novamente.'
    end
  end
end

tela_inicial

#Nesta versão revisada, o código lida melhor com a exibição das informações da cont