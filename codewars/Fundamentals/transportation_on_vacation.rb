def rental_car_cost(d)
    rent_day = 40
    total_value = d * rent_day

    if d >= 7
        total_value -= 50
    elsif d >= 3
        total_value -= 20
    end

    return total_value
end