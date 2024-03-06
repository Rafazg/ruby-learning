def area_or_perimeter(l, w)
  return  l == w ? l * w : w*2 + l * 2
end

puts(area_or_perimeter(6, 10))