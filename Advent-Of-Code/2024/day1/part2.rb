input = $stdin.read
list1=[]
list2=[]
answer=0
input.each_line do |line|
  numbers = line.split.map(&:to_i)

  list1 << numbers[0].to_i
  list2 << numbers[-1].to_i
end
count=0
list1.each do |number|
  list2.each do |list_number|
    count = count+1 if number==list_number
  end
  
  answer = answer + (number * count)
  count=0
end
puts answer