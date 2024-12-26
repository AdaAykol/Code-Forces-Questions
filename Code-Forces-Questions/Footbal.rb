input = gets.to_i

countForTeam1=0
countForTeam2=0
array=[]

input.times do 
  teamName = gets.chomp
  array.push(teamName)
end

firstTeam = ""
secondTeam = ""

firstTeam = array[0]

for i in 0..array.length-1

  if(firstTeam != array[i])
    secondTeam = array[i]
    countForTeam2 = countForTeam2 + 1
  else
    countForTeam1 = countForTeam1+1
  end

end


if(countForTeam1 > countForTeam2)
  puts firstTeam
else
  puts secondTeam
end