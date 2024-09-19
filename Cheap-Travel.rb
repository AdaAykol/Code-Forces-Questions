input = gets.chomp

input = input.split.map(&:to_i)

n = input[0] # number of tickets planned out
m = input[1]  # number of rides covered by the m ticket
a = input[2]  # the price of of 1 ride ticket
b = input[3]  # the price of of 1 m ticket


if n * a > (n/m) * b

  if n % m == 0 
    puts (n / m) * b
  else
    puts (n / m) * b + ((n%m)*a)
  end
else
  puts n * a
end