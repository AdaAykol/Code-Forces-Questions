numberOfCubes = gets.to_i
bool = false
count=1
i=1
temp=0
 
if(numberOfCubes == 1 || numberOfCubes == 2 || numberOfCubes == 3)
  bool = true
  count = 2 
end
 
 
while bool == false do
  
  requiredBlock=(i*(i+1))/2
  requiredBlock = requiredBlock+temp
  temp = requiredBlock
 
 
  if(numberOfCubes >= requiredBlock)
    bool = false
    count = count + 1  
  else
    bool = true
  end
 
  
  i = i + 1
end
puts count-1