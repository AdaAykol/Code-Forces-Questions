input = $stdin.read
list1=[]
list2=[]
answer=0
input.each_line do |line|
  numbers = line.split.map(&:to_i)

  list1 << numbers[0].to_i
  list2 << numbers[-1].to_i
end

list1.each do |number|
  count=list2.count(number)
  answer += (number * count)
end

puts answer