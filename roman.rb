require 'colorize'

def to_roman(n)
  div= 4
  quotient, remainder = [n/div, n%div]
  p [div, quotient, remainder]
  if quotient==1
    return "IV"
  else
    return "I"*n
  end
end
  puts "商 (英: quotient) と剰余 (英: remainder) "

[[1,'I'],
 [2,'II'], 
 [4,'IV'],
 [5,'V']
].each do |vals|
  n, expected = vals
  actual = to_roman(n)
  if expected==actual
    puts ("%d: %s == %s".green) % [n, expected, actual]
  else
    puts ("%d: %s == %s".red) % [n, expected, actual]
  end

      
end
