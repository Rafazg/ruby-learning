puts('Digite números: ')
values = gets.chomp().split(',')

code = values[0].to_i
quantity = values[1].to_i
total = 0

if code == 1
  total = quantity * 4.0
elsif code == 2
  total = quantity * 4.5
elsif code == 3
  total = quantity * 5.0
elsif code == 4
  total = quantity * 2.0
else
  total = quantity * 1.5
end

puts("Total: R$ #{'%.2f' % total}")
