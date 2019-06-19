class Board
    attr_accessor :pos
    
    def initialize
	  	@pos = {
	  		'1' => "1",
	  		'2' => "2",
	  		'3' => "3",
	  		'4' => "4",
	  		'5' => "5",
	  		'6' => "6",
	  		'7' => "7",
	  		'8' => "8",
	  		'9' => "9",
	  	}
	  	@game_over = false
    end

    def display
        row1 = "#{pos['1'].center(4)}|#{pos['2'].center(4)}|#{pos['3'].center(4)}"
        row2 = "#{pos['4'].center(4)}|#{pos['5'].center(4)}|#{pos['6'].center(4)}"
        row3 = "#{pos['7'].center(4)}|#{pos['8'].center(4)}|#{pos['9'].center(4)}"
        sep = "----+----+----"
        puts row1
        puts sep
        puts row2
        puts sep
        puts row3
        print "\n"
    end

    def move_valid?(move)
        correct_pos = ("1".."9").include?(move)
        is_not_occupied = pos[move].eql?(move)
        correct_pos and is_not_occupied
    end

    def update(position, sym)
        pos[position] = sym
    end

    def tie
        

    def game_over
        if pos["1"].eql? pos["2"] and pos["2"].eql? pos["3"]
            return pos["1"]
        elsif pos["4"].eql? pos["5"] and pos["5"].eql? pos["6"]
            return pos["4"]
        elsif pos["7"].eql? pos["8"] and pos["8"].eql? pos["9"]
            return pos["7"]
        elsif pos["1"].eql? pos["4"] and pos["4"].eql? pos["7"]
            return pos["1"]
        elsif pos["2"].eql? pos["5"] and pos["5"].eql? pos["8"]
            return pos["2"]
        elsif pos["3"].eql? pos["6"] and pos["6"].eql? pos["9"]
            return pos["3"]
        elsif pos["1"].eql? pos["5"] and pos["5"].eql? pos["9"]
            return pos["1"]
        elsif pos["3"].eql? pos["5"] and pos["5"].eql? pos["7"]
            return pos["3"]
        else
            return nil
        end
    end
end


# b = Board.new

# m = gets.chomp

# p b.move_valid?(m)