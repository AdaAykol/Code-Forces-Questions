input = $stdin.read
answer=0


input.each_line do |line|
  list = line.split.map(&:to_i)
  unsafe = false
  i=0
  (list.length-1).times do
    puts "This is the line: #{list}"
    puts "This is the number: #{list[i]}"
    puts "This is the next number: #{list[i+1]}"
    puts "is this unsafe?: #{unsafe}"
    if (list[i] - list[i+1]).abs >3 || (list[i]+list[i+1]) > 3 
      unsafe = true
      break
    end
    i=i+1
  end

  if unsafe == false
    answer=answer+1
  end
end
    


puts answer
