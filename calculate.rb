require_relative 'calculator'
require 'pry'

include Calculator

names = []
gang = {}
a = nil

puts "Enter the names of yourself and your friends with whom you would like to share the expenses:"
names = gets.split(/, */)
names[-1].chomp!

names.each { |k| gang[k] = Friend.new(k) }

puts "Enter the expenses in the format: FROM, TO, AMOUNT:"

loop do
	a = gets.split(/, */)	# handle tabs
	break if a.length == 1
	gang[a[0]].gives_to(gang[a[1]],a[2].to_i)
end

puts "Balances are:"
gang.keys.each do |i|
	puts gang[i].name + " = " + gang[i].balance.to_s
end

########################
# Output:
# Enter the names of yourself and your friends with whom you would like to share the expenses:
# jon, dany, arya, jamie
# Enter the expenses in the format: FROM, TO, AMOUNT:
# arya, jamie, 40
# arya, dany, 50
# jon, dany, 30

# Balances are:
# jon = -30
# dany = 80
# arya = -90
# jamie = 40
########################
