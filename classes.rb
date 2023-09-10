class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def secondYes
     def adult!
      @age = 18
     end
  end

  def yesRes
    if @age == 18
      puts('pode votar')
    else
      puts('não pode votar')
    end
    puts('você deseja ter 18 anos?')
    secondRes = gets().chomp.to_s()
    if secondRes == "sim"
      secondYes()
    end
  end

  def welcome
    puts("Welcome #{@name} you wanna vote?")
    res = gets().chomp.to_s()

    if res == "sim"
      yesRes()
    end
  end
  
  def adult?
    @age >= 18
  end
end


 
 
 