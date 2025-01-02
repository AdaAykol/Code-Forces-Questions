input = $stdin.read

matrix = []

count=0

input.each_line do |line|
  char_array = line.strip.chars
  matrix << char_array
end

rows = matrix.length
cols = matrix[0].length


(1..rows-2).each do |i|
  (1..cols-1).each do |j|
    puts "I am in row #{i}, column: #{j} this is the letter #{matrix[i][j]} within the matrix list #{matrix[i].inspect}"
    if matrix[i][j] == "A"
      if ((matrix[i+1][j+1] == "M" && matrix[i-1][j-1] == "S") || (matrix[i+1][j+1] == "S" && matrix[i-1][j-1] == "M")) && ((matrix[i+1][j-1] == "M" && matrix[i-1][j+1] == "S") || (matrix[i+1][j-1] == "S" && matrix[i-1][j+1] == "M"))
        count = count+1
      end
    end 
  end
end



puts count

# I WANT TO TEST TO HARDCODE THE X-MAS LIKE DOWN BELOW AND ITERATE THROUGH THE WHOLE MATRIX WITH THE 3x3 POSSIBILITIES, AND COUNT
# 
#   M M   S S   S  M    M  S
#    A     A      A       A
#   S S   M M   S  M    M  S
#   
#LETS GET THE A AS THE STARTING POINT. GET ALL THE A's AND CHECK THEIR DIAGONALS