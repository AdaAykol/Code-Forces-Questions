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


## VERSION I DID WITH HELP (I ONLY GOT HELP AFTER 1:30 HOURS AND EVEN THOUGH I THOUGHT I HAD CORRECT ANSWERS I DID NOT)



def detect_discrepancy(list)
  previous_direction = nil

  list.each_cons(2) do |current, incoming|
    if incoming > current
      if previous_direction == :descending
        @count = @count + 1
        return true 
      end
      previous_direction = :ascending
    elsif current > incoming
      if previous_direction == :ascending
        @count = @count + 1
        return true
      end
      previous_direction = :descending
    end
  end

  puts "this is counter test #{@count}"
  return false
end


def is_list_safe_with_dampener?(list)

  if !safet_checker?(list)
    
  end

  list.each_with_index do |_, i|
    modified_list = list.dup
    modified_list.delete_at(i)
    puts modified_list.inspect
    if !detect_discrepancy(modified_list)
      return true 
    end
  end

  return false
end

def safety_checker?(list)
  list.each_with_index do |number, i|
    if i > 0 && i + 1 < list.length       # I HAD ISSUES FINDING OUT THIS IF STATEMENT TO PREVENT OVERBOUNDING 
      if (number - list[i + 1]).abs > 3 
        @safe = false
        @count = 10
      end
      if number == list[i + 1] && (list[i+1] - list[i-1]).abs >3
        @safe = false
        @count = @count + 1
      end
    end
  end
end


def main
  input = $stdin.read
  @safe = true
  @answer = 0
  @count = 0
  input.each_line do |line|
    list = line.split.map(&:to_i)

    if detect_discrepancy(list)
      @safe = false
    end
    
    if is_list_safe_with_dampener?(list)
      
    end



  end

end

main
puts "The answer is: #{@answer}"