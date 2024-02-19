class GoodDog
    attr_accessor :name, :height, :weight

    def initialize(n, h, w)
        @name = n
        @height = h
        @weight = w
    end

    def speak
        "#{@name} says arf!"
    end

    def change_info(n, h, w)
       self.name = n
       self.height = h
       self.weight = w
    end

    def info
        "#{self.name} weighs #{self.weight} and is #{self.height} tall."
    end

    def some_method 
        self.info
    end

    #Class Method
    def self.what_am_i
        puts "I'am GoodDog class!"
    end
end
