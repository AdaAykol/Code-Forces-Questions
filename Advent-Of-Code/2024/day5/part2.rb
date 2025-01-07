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
# updated_safe = false                    # this line had to be at line 31 so i was receiving error used GPT to solve this.

arr2.each do |arr|
  updated_safe = false  
  loop do
    swapped = false
    rules.each do |rule|
      if arr.include?(rule[0]) && arr.include?(rule[1])
        first_index = arr.index(rule[0])
        second_index = arr.index(rule[1])
        if first_index > second_index 
          puts "the rule that fails: #{rule}"
          puts "the unsafe list #{arr}"
          puts "swapping #{arr[first_index]} with #{arr[second_index]}"
          temp = arr[first_index]
          arr[first_index] = arr[second_index]
          arr[second_index] = temp
          puts "swapped list: #{arr}"
          updated_safe = true
          swapped = true
          break
        end
      end
    end
    break if !swapped
  end

  if updated_safe
    answer = answer+arr[arr.length/2]
    puts "the center value #{arr[arr.length/2]}"
  end

  if safe
    puts "the list #{arr} is now safe!"   
  end
end


puts answer
