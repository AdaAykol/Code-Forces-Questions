# input = $stdin.read

# matrix=[]


# count = input.scan("XMAS").count + input.scan("SAMX").count


# searched_word = "XMAS"

# puts "initial counter (horizontal): #{count}"

# input.each_line do |line|
#   char_array = line.strip.chars

#   matrix << char_array
# end
# puts matrix.inspect

# rows = matrix.length
# cols = matrix[0].length

# (0..rows - searched_word.length).each do |i|    #the `- searched_word part was very smart!`
#   (0..cols - searched_word.length).each do |j|
#     if matrix[i][j] == "X"
#       if matrix[i+1][j+1] == "M"
#         if matrix[i+2][j+2] == "A"
#           if matrix[i+3][j+3] == "S"
#             count = count+1
#           end
#         end
#       end
#     elsif matrix[i][j] == "S"
#       if matrix[i+1][j+1] == "A"
#         if matrix[i+2][j+2] == "M"
#           if matrix[i+3][j+3] == "X"
#             count = count+1
#           end
#         end
#       end
#     end
#   end
# end

# (0..rows - searched_word.length).each do |i|
#   (0..cols - searched_word.length).each do |j|
#     if matrix[i][j] == "X"
#       if matrix[i + 1][j - 1] == "M"
#         if matrix[i + 2][j - 2] == "A"
#           if matrix[i + 3][j - 3] == "S"
#             count += 1
#           end
#         end
#       end
#     elsif matrix[i][j] == "S"
#       if matrix[i + 1][j - 1] == "A"
#         if matrix[i + 2][j - 2] == "M"
#           if matrix[i + 3][j - 3] == "X"
#             count += 1
#           end
#         end
#       end
#     end
#   end
# end

# (0..rows - searched_word.length).each do |i|
#   (0..cols - searched_word.length).each do |j|
#     if matrix[i][j] == "X"
#       if matrix[i+1][j] == "M"
#         if matrix[i+2][j] =="A"
#           if matrix[i+3][j] == "S"
#             count=count+1
#           end
#         end
#       end
#     elsif matrix[i][j] == "S"
#       if matrix[i-1][j] == "A"
#         if matrix[i-2][j] == "M"
#           if matrix[i-3][j] == "X"
#             count = count+1
#           end
#         end
#       end
#     end
#   end
# end

# puts count
# 
#
input = $stdin.read

matrix = []
count = input.scan("XMAS").count + input.scan("SAMX").count

searched_word = "XMAS"

puts "Initial counter (horizontal): #{count}"

input.each_line do |line|
  char_array = line.strip.chars
  matrix << char_array
end

puts matrix.inspect

rows = matrix.length
cols = matrix[0].length

# Check diagonally top-left to bottom-right
(0..rows - searched_word.length).each do |i|
  (0..cols - searched_word.length).each do |j|
    if matrix[i][j] == "X" &&
       matrix[i + 1][j + 1] == "M" &&
       matrix[i + 2][j + 2] == "A" &&
       matrix[i + 3][j + 3] == "S"
      count += 1
    elsif matrix[i][j] == "S" &&
          matrix[i + 1][j + 1] == "A" &&
          matrix[i + 2][j + 2] == "M" &&
          matrix[i + 3][j + 3] == "X"
      count += 1
    end
  end
end

# Check diagonally top-right to bottom-left
(0..rows - searched_word.length).each do |i|
  (searched_word.length - 1...cols).each do |j|
    if matrix[i][j] == "X" &&
       matrix[i + 1][j - 1] == "M" &&
       matrix[i + 2][j - 2] == "A" &&
       matrix[i + 3][j - 3] == "S"
      count += 1
    elsif matrix[i][j] == "S" &&
          matrix[i + 1][j - 1] == "A" &&
          matrix[i + 2][j - 2] == "M" &&
          matrix[i + 3][j - 3] == "X"
      count += 1
    end
  end
end

(0..rows - searched_word.length).each do |i|
  (0...cols).each do |j|
    if matrix[i][j] == "X" &&
       matrix[i + 1][j] == "M" &&
       matrix[i + 2][j] == "A" &&
       matrix[i + 3][j] == "S"
      count += 1
    elsif matrix[i][j] == "S" &&
          matrix[i + 1][j] == "A" &&
          matrix[i + 2][j] == "M" &&
          matrix[i + 3][j] == "X"
      count += 1
    end
  end
end

puts count
