class String
    def toJadenCase
      self.split.map(&:capitalize).join(" ")
    end
  end

  str = "How can mirrors be real if our eyes aren't real"

  puts str.toJadenCase