require_relative 'calculator'

include Calculator

names = []
gang = {}
a = nil

puts "Enter the list of transactions in the format: FROM, TO, AMOUNT:"

loop do
	a = gets.split(/, */)	# handle tabs
	break if a.length == 1
	gang[a[0]] = Friend.new(a[0]) if gang[a[0]].nil?
	gang[a[1]] = Friend.new(a[1]) if gang[a[1]].nil?
	gang[a[0]].gives_to(gang[a[1]],a[2].to_i)
end

Calculator.summarize(gang)


########################
# Usage
#
# Command: ruby calculate.rb
# Output:
# Enter the list of transactions in the format: FROM, TO, AMOUNT:
# jon, dany, 100
# jon, arya, 50
# arya, jamie, 20
# jamie, cercie, 20
#
# jon gets 150
# dany gives 100
# arya gives 30
# jamie - settled
# cercie gives 20
########################
