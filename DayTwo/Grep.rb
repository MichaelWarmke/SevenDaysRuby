
def grep(expression, file_name)
    read_file = File.open(file_name, "r") 
    lines = read_file.readlines
    lines.each { |line| p line if line.index(expression) }
end

grep("{}}}", "Tree.rb")
