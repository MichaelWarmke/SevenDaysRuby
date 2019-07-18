
puts "Hello World"

hiRuby = "Hello, Ruby."

#puts hiRuby.methods

puts hiRuby.rindex("Ruby.")

x = 10
until x==0
    puts "Michael Warmke"
    x -= 1
end

#Inline
(1..10).each { |n| puts "Michael Warmke"}
#better
10.times {puts "Michael Warmke"}

index = 1
while index <= 10
    puts "This is sentence number #{index}"
    index += 1
end

#Inline
(1..10).each { |n| puts "this is sentence number #{n}"}

#Better
10.times { |number| puts "this is sentence number #{number}" }

