values = [];

puts('Digite números: ')
values = gets.chomp().split(',');

code = values[0].to_i;
quantity = values[1].to_i;
total



if (codigo == 1) {
    total = quantity * 4.0;
  }
  else if (codigo == 2) {
    total = quantity * 4.5;
  }
  else if (codigo == 3) {
    total = quantity * 5.0;
  }
  else if (codigo == 4) {
    total = quantity * 2.0;
  }
  else {
    total = quantity * 1.5;
  }
end

puts("Total: R$ #{total.to_i}")



