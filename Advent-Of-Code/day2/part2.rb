# # THE VERSION I DID NOT WORKING 

# def detect_discrepancy(list)
#   previous_direction = nil

#   list.each_cons(2) do |current, incoming|
#     if incoming > current
#       if previous_direction == :descending
#         @count = @count + 1
#         return true 
#       end
#       previous_direction = :ascending
#     elsif current > incoming
#       if previous_direction == :ascending
#         @count = @count + 1
#         return true
#       end
#       previous_direction = :descending
#     end
#   end

#   puts "this is counter test #{@count}"
#   return false
# end

# def main
#   input = $stdin.read
#   safe = true
#   @answer = 0
#   @count = 0
#   input.each_line do |line|
#     list = line.split.map(&:to_i)


#     if detect_discrepancy(list)
#       safe = false
#     else
#       list.each_with_index do |number, i|
#         if i > 0 && i + 1 < list.length       # I HAD ISSUES FINDING OUT THIS IF STATEMENT TO PREVENT OVERBOUNDING 
#           if (number - list[i + 1]).abs > 3 
#             safe = false
#             @count = 10
#           end
#           if number == list[i + 1] && (list[i+1] - list[i-1]).abs >3
#             safe = false
#             @count = @count + 1
#           end
#         end
#       end
#     end


#     puts "the unsafe counter for the #{list} list: #{@count}"


#     if @count <= 1
#       safe = true
#     else
#       puts "contains more than one errors"
#     end

#     if safe
#       @answer = @answer + 1
#       puts "This list is safe"
#     else
#       puts "this list is UNSAFE"
#     end


#     @count=0
#     safe = true
#   end

# end


# main
# puts "The answer is: #{@answer}"


## VERSION I DID WITH HELP (I ONLY GOT HELP AFTER SO MANY HOURS AND EVEN THOUGH I THOUGHT I HAD CORRECT ANSWERS I DID NOT)

def is_safe(list)
  # Check if differences between adjacent levels are within the valid range
  return false unless list.each_cons(2).all? { |a, b| (1..3).include?((a - b).abs) }

  # Check if the levels are consistently increasing or decreasing
  increasing = list.each_cons(2).all? { |a, b| a < b }
  decreasing = list.each_cons(2).all? { |a, b| a > b }

  increasing || decreasing
end

def is_safe_with_dampener(list)
  # Check if removing one level makes the list safe
  list.each_with_index do |_, i|
    modified_list = list.dup
    modified_list.delete_at(i)
    return true if is_safe(modified_list)
  end
  false
end

def main
  input = $stdin.read
  safe_count = 0

  input.each_line do |line|
    list = line.split.map(&:to_i)

    # Check if the report is safe or can be made safe with the Problem Dampener
    if is_safe(list) || is_safe_with_dampener(list)
      safe_count += 1
    end
  end

  puts "The number of safe reports is: #{safe_count}"
end

main
