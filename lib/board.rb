class Board
    attr_accessor :game_over, :position
    def initialize
	  	@position = {
	  		'1' => 1,
	  		'2' => 2,
	  		'3' => 3,
	  		'4' => 4,
	  		'5' => 5,
	  		'6' => 6,
	  		'7' => 7,
	  		'8' => 8,
	  		'9' => 9,
	  	}
	  	@game_over = false
    end
end

board = Board.new
p board.position