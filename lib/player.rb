require 'board'

class Player
	attr_reader :name, :symbol

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
	end


	def make_move(position, board)
		if board.move_valid?(position)
	end

end