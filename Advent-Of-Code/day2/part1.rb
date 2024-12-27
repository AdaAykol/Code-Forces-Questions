def detect_discrepancy(list)
  previous_direction = nil

  list.each_cons(2) do |current, incoming|
    if incoming > current
      return true if previous_direction == :descending
      previous_direction = :ascending
    elsif current > incoming
      return true if previous_direction == :ascending
      previous_direction = :descending
    end
  end

  false
end

input = $stdin.read
safe = true
answer = 0

input.each_line do |line|
  list = line.split.map(&:to_i)


  if detect_discrepancy(list)
    safe = false
  else
    list.each_with_index do |number, i|
      if i + 1 < list.length 

        # puts "This is the line: #{list}"

        if (number - list[i + 1]).abs > 3 || number == list[i + 1]
          safe = false
        end

        # puts "This is the number: #{number}"
        # puts "This is the next number: #{list[i + 1]}"
        # puts "The difference is: #{(number - list[i + 1]).abs}"
      end
    end
  end

  if safe
    answer += 1
  end

  safe = true
end

puts "The answer is: #{answer}"

# I had a hard time with the method `detect_disperancy`