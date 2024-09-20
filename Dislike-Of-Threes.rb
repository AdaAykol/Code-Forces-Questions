input = gets.to_i



input.times do 

  n = gets.to_i
  array=[]
  count = 0
  number = 1
  
  while count <=n do
    if(number % 3 == 0 || number % 10 == 3)
    
    else
      array.push(number)
      count = count + 1
    end
    number= number + 1
  end

  puts array[n-1]
end



# for i in 0 n