input = gets.to_i

array=[]

input.times do 
  
  expression = gets.chomp

  result = expression[0].to_i + expression[-1].to_i

  array.push(result)


end


for i in 0..array.length-1
  puts array[i]
end
