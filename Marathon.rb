input = gets.to_i
count=0
array=[]

input.times do 
  n = gets


  n = n.split.map {|element| element.to_i}



  if(n[0]<n[1])
    count=count+1
  end

  if(n[0]<n[2])
    count=count+1
  end

  if(n[0]<n[3])
    count=count+1
  end
  array.push(count)
  count=0
end

for i in 0..array.length-1
  puts array[i]
end