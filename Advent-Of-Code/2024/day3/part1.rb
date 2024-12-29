input = $stdin.read

muls = input.scan(/mul\((\d+),(\d+)\)/)
answer = 0
puts muls.inspect

muls.each do |mul|
  int_mul=mul.map(&:to_i)

  answer += int_mul[0]*int_mul[1]
end
 
puts answer