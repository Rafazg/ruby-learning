
def get_middle(s)
    middle_index = s.length / 2
    return s.length.even? ? s[middle_index - 1 ..middle_index] : s[middle_index] 
end
str = "test"
puts(get_middle(str))