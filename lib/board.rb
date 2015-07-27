require_relative 'ship'

class Board
	def initialize
		@co_ordinates = []
	end

	def place ship
		@co_ordinates << ship
	end

	def show_board
		@co_ordinates
	end

	def shoot aim
		@co_ordinates.map! do |x|
			if x.include?(aim)
				x.delete(aim)
				"Hit!"
			else
				"Miss!"
			end
		end
	end
end