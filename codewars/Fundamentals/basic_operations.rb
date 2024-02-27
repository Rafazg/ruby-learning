def basic_op(operator, value1, value2)
    case operator
    when '+'
        return value1 + value2
    when '-'
        return value1 - value2
    when '*'
        return value1 * value2
    when '/'
        return value1 / value2
    else
        return "Operador inválido"
    end
end

  puts(basic_op('+', 5, 5))