class Mycar
    attr_accessor :color
    attr_reader :year, :model
    def initialize(year, model, color)
        @year = year
        @model = model
        @color = color
        @current_speed = 0
    end

    def accelerate(number)
        @current_speed += number
        puts ("You push the gas and accelerate #{number} mph.")
    end

    def brake(number)
        @current_speed -= number
        puts("You push the brake #{number} mph.")
    end

    def current_speed
        puts ("You are now going #{@current_speed} mph.")
    end

    def turn_off
        @current_speed = 0
        puts("Let's park right here!")
    end

    def spray_paint(color)
        self.color = color
        puts ("Your new #{color} paint job looks great!")
    
    end
end

dodge = Mycar.new(1990, "Daytona RT", "Red")

dodge.accelerate(45)
dodge.spray_paint("Green")