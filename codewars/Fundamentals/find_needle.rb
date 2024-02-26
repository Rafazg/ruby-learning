#* Can you find the needle in the haystack?
#* Write a function findNeedle() that takes an array full of junk but containing one "needle"
#* After your function finds the needle it should return a message (as a string) that says:
#* "found the needle at position " plus the index it found the needle

haystack = ['3', '123124234', nil, 'world', 'needle', 'hay', 2, '3', true, false]

def find_needle(haystack)
    haystack.each_with_index do |element, index|
        if element == "needle" 
            return "found the needle at position #{index}" 
        end
    end
end

puts (find_needle(haystack))