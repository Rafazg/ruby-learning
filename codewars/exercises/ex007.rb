values = []
puts("Digite a hora inicial do jogo")
values[0] =  gets.chomp()
puts("Digite a hora final do jogo")
values[1] =  gets.chomp()

start_time = values[0].to_i;
final_time = values[1].to_i;

duration = 0

if (start_time < final_time)
  duration = final_time - start_time;
else
  duration = 24 - start_time + final_time
end

puts("O Jogo durou #{duration} Hora(S)")
