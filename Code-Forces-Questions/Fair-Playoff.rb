input = gets.to_i

array = []
input.times do
  players = gets.chomp
  player = players.split.map { |element| element.to_i }

  player1 = player[0]
  player2 = player[1]
  player3 = player[2]
  player4 = player[3]

  if player1 > player2
    finalsContestant1 = player1
    loserSkill1 = player2
  else
    finalsContestant1 = player2
    loserSkill1 = player1
  end

  if player3 > player4
    finalsContestant2 = player3
    loserSkill2 = player4
  else
    finalsContestant2 = player4
    loserSkill2 = player3
  end

  if loserSkill1 > finalsContestant2 || loserSkill2 > finalsContestant1
    array.push('NO')
  else
    array.push('YES')
  end
end

for i in 0..array.length - 1
  puts array[i]
end
