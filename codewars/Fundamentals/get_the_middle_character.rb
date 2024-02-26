str = "teste"

def get_middle(s)
    return s.length.even? ? puts("even") : puts("odd")
    # return s.length ? puts("middle") : puts("nops")
end

puts(get_middle(str))