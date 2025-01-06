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
    first, second = line[0].split("|")
    rules << [first.to_i, second.to_i]
  elsif line != []

    number_set = line[0].split(",").map(&:to_i)
    arr2 << number_set
  end
end

puts "This is the rules list: #{rules}"
puts "this is the arr2: #{arr2}"

answer=0
safe = true
arr2.each do |arr|
  rules.each do |rule|
    if arr.include?(rule[0]) && arr.include?(rule[1])
      first_index = arr.index(rule[0])
      second_index = arr.index(rule[1])
      if first_index > second_index 
        safe = false
      end
    end
  end

  if safe
    answer = answer+arr[arr.length/2]
  end
end

puts answer
