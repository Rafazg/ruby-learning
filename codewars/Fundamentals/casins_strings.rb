class String
  
    def initialize(str)
      @str = str
    end

    def toJadenCase
      caps_word = @str.split.map(&:capitalize).join(" ")
      puts "#{caps_word}"
    end
end

  str = "How can mirrors be real if our eyes aren't real"

  new_str = "eu preciso ficar com as iniciais em maiusculas"

  s = String.new(new_str)

  s.toJadenCase()

  # puts str.toJadenCase