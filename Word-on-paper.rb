input = gets.to_i
array=[]
totalWord= ""

input.times do

 grid= ""
  


  8.times do 
    line = gets.chomp
    grid += line
  end

  totalWord = grid.chars.reject { |char| char == '.' }.join

  array.push(totalWord)

end

for i in 0..array.length-1
  puts array[i]
end