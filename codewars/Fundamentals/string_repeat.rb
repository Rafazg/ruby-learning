#* Escreva uma função que aceite um número inteiro (n) e uma
#* string (s) como parâmetros e retorne uma string srepetida exatamente nvezes.

def repeat_string(s, n)
   result = ""
   n.times {result += s}
   result
end

puts repeat_string("Hello", 2)
