############################# SOLVED ####################################
#
input = gets.to_i

array=[]

input.times do
  
  n = gets

  n = n.split.map {|element| element.to_i}
  
  a = n[0]
  b = n[1]
  c = n[2]

  if(a+b == c)
    array.push("+")
  else
    array.push("-")
  end
end

for i in 0..array.length-1
  puts array[i]
end