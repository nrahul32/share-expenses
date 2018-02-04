require_relative 'calculator'
require 'pry'

include Calculator

names = []
gang = {}
a = nil

puts "Enter list of names(comma separated) of those would like to share the expenses:"
names = gets.split(/, */)
names[-1].chomp!

names.each { |k| gang[k] = Friend.new(k) }

puts "Enter the expenses in the format: FROM, TO, AMOUNT:"

loop do
	a = gets.split(/, */)	# handle tabs
	break if a.length == 1
	gang[a[0]].gives_to(gang[a[1]],a[2].to_i)
end

Calculator.summary(gang)


########################
# Command: ruby calculate.rb
#
# Output:
# Enter list of names(comma separated) of those would like to share the expenses:
# jon, dany, arya, jamie
# Enter the expenses in the format: FROM, TO, AMOUNT:
# jon, dany, 100
# jon, arya, 50
# arya, jamie, 20
#
# jon gets 150
# dany gives 100
# arya gives 30
# jamie gives 20
########################
