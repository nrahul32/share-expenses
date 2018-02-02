require_relative 'calculator'

include Calculator

a = Friend.new("a")
b = Friend.new("b")
c = Friend.new("c")
d = Friend.new("d")

a.gives_to(b, 20)
c.gets_from(d, 50)
d.gives_to(b, 10)


puts "Balances are:"
puts a.name + " = " + a.balance.to_s
puts b.name + " = " + b.balance.to_s
puts c.name + " = " + c.balance.to_s
puts d.name + " = " + d.balance.to_s

########################
# Output:
# Balances are:
# a = -20
# b = 30
# c = 50
# d = -60
########################
