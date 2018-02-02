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
end
