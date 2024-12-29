input = $stdin.read

enabled = true
answer=0
regex = /mul\((\d+),(\d+)\)|do\(\)|don't\(\)/

matches = []
input.scan(regex) do

  match = Regexp.last_match[0]
  matches << match
end

puts matches.inspect
matches.each do |match|
  if match == "do()"
    enabled = true
  elsif match == "don't()"
    enabled = false
  end

  if enabled && match.match?(/\d+/)
    numbers=match.scan(/\d+/).map(&:to_i)
    answer += numbers[0]*numbers[1]
  end

end
 
puts answer

