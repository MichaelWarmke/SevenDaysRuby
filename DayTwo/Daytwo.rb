
#1 without code block
test_file = File.open("test.txt", "w")

test_file.puts("Without Block Write Out")

test_file.close

#1 with code block : a for append

File.open("test.txt", "a") { |file| file.write("Block Write Out") }

File.open("test.txt", "r") { |file| file.each_line { |line| puts line} }

File.delete("test.txt")



##1

print_array = []

16.times {|number| print_array.push(number)}

inter_array = []

print_array.each do |index|
    inter_array.push(index)
    p inter_array if inter_array.size == 4
    inter_array.clear if inter_array.size == 4
end

print_array.each_slice(4) { |slice| p slice }

