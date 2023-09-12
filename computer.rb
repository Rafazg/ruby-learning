class Computer
    attr_accessor :price, :owner, :motherboard
    def initialize(price, owner)
       @price = price
       @owner = owner
    end
    

    class MotherBoard
        attr_accessor :name, :mark, :price
        def initialize(name, mark, price)
            @name = name
            @mark = mark
            @price = price
        end
    end
  
    class PowerSupply

    end
end

# Criar uma array para armazenar instâncias de Computer
computers = []

# Criar algumas instâncias de Computer e adicioná-las ao array
computers << Computer.new(1800, 'Rafael')
computers << Computer.new(2000, 'Alice')
computers << Computer.new(1500, 'Bob')
computers << Computer.new(2700, 'Julia')

# Criar e configurar instâncias de MotherBoard e atribuí-las a instâncias de Computer
computers[0].motherboard = Computer::MotherBoard.new('MSI100', 'MSI', 500)
computers[1].motherboard = Computer::MotherBoard.new('ASUS200', 'ASUS', 600)
computers[2].motherboard = Computer::MotherBoard.new('Gigabyte300', 'Gigabyte', 450)
computers[3].motherboard = Computer::MotherBoard.new('B350', 'AMD', 450)

# Acessar e imprimir os dados das instâncias de Computer e MotherBoard
computers.each do |computer|
  puts "Computer Price: #{computer.price}"
  puts "Computer Owner: #{computer.owner}"
  puts "Motherboard Name: #{computer.motherboard.name}" if computer.motherboard
  puts "Motherboard Mark: #{computer.motherboard.mark}" if computer.motherboard
  puts "Motherboard Price: #{computer.motherboard.price}" if computer.motherboard
  puts "------"
end