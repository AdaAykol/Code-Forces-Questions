input = gets.chomp
alphabet = ('a'..'z').to_a
totalWord= ""

count=0
i=0



while input != totalWord do

  if totalWord == ""
    wordOfInputOnAlphabet = alphabet.index("a")
    nextWordOfInputOnAlphabet = alphabet.index(input[i])
  else
    wordOfInputOnAlphabet = alphabet.index(input[i-1])
    nextWordOfInputOnAlphabet = alphabet.index(input[i])
  end
  wordToBeAdded = input[i]
  linearDistance = (wordOfInputOnAlphabet - nextWordOfInputOnAlphabet).abs
  cycleDistance = (linearDistance - alphabet.size).abs

  if(linearDistance < cycleDistance) 
    count += linearDistance
  else
    count += cycleDistance
  end
  totalWord= totalWord + wordToBeAdded
  i = i + 1
end

puts count
