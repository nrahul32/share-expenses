module Calculator
	class Friend
		attr_accessor :balance, :name

		def initialize(name)
			@name = name
			@balance = 0
		end

		def gives_to(friend, amount)
			friend.balance = friend.balance + amount
			@balance = @balance - amount
		end

		def gets_from(friend, amount)
			friend.balance = friend.balance - amount
			@balance = @balance + amount
		end
	end

	def summarize(gang)
		puts "SUMMARY:"
		gang.keys.each do |name|
			if gang[name].balance < 0
				puts gang[name].name + " gets " + gang[name].balance.abs.to_s
			elsif gang[name].balance > 0
				puts gang[name].name + " gives " + gang[name].balance.to_s
			else
				puts gang[name].name + " - settled"
			end
		end
	end
end
