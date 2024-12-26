input = $stdin.read
list1=[]
list2=[]
answer = 0
input.each_line do |line|
  numbers = line.split.map(&:to_i)

  list1 << numbers[0].to_i
  list2 << numbers[-1].to_i
end

list1_sorted = list1.sort
list2_sorted = list2.sort

i=0
list1_sorted.length.times do
  answer = answer + (list1_sorted[i] - list2_sorted[i]).abs
  i =i+1
end


puts answer
