input = $stdin.read
before_empty = true

rules = []
arr2 = []
input.each_line do |line|
  line = line.split

  if line.empty?
    before_empty = false
  end

  if before_empty
    rules << line
  else
    arr2 << line
  end
end


puts "This is the rules list: #{rules}"
puts "this is the arr2: #{arr2}"