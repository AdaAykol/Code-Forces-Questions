input = gets.to_i

array=[]
input.times do

  n = gets

  n = n.split.map { |element| element.to_i }

  a=n[0]
  b=n[1]

  test=n[0]-n[1]
  array.push(test.abs)
end

for i in 0..array.length-1
  puts array[i]
end