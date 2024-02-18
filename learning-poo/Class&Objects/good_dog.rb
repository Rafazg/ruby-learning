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
end


spark = GoodDog.new("Spark", '12 inches', '10 lbs')
puts(spark.info)

spark.change_info('Julios', '15 inches', '20 lbs')

puts(spark.info)
