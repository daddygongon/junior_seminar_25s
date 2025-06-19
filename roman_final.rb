require 'colorize'

def to_roman(n)
  romans = []
  [[1000,'M'],[900,'CM'],[500,'D'],[400,'CD'],
   [100, 'C'],[90,'XC'],[50,'L'],[40,'XL'],
   [10,'X'], [9,'IX'],[5,'V'], [4,'IV'], [1,'I']].each do |div, roman|
    quotient, remainder = [n/div, n%div]
#    p [div, quotient, remainder]
    romans << roman*quotient if quotient>=1
    #    n -= div * quotient
    n = remainder
  end
  return romans.join
end

puts "商 (英: quotient) と剰余 (英: remainder) "

[[1,'I'],
 [2,'II'], 
 [4,'IV'],
 [5,'V'],
 [6,'VI'],
 [9,'IX'],
 [10,'X'],
 [17,'XVII'],
 [20,'XX'],
 [40,'XL'],
 [52,'LII'],
  [101, 'CI'],
 [732, 'DCCXXXII'], [999, "CMXCIX"], [1999, "MCMXCIX"]
].each do |vals|
  n, expected = vals
  actual = to_roman(n)
  if expected==actual
    puts ("%d: %s == %s".green) % [n, expected, actual]
  else
    puts ("%d: %s == %s".red) % [n, expected, actual]
  end

      
end
