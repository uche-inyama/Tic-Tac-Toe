require '../lib/board'
require '../lib/player'

puts "Let's play tic-tac-toe"

print "Player 1 Name?"
name = gets.chomp
if !name.empty?
    player1 = Player.new(name, "X")
else
    player1 = Player.new("Player-1", "X")
end
puts "#{player1}\n"
print "Player 2 Name?"
name = gets.chomp
if !name.empty?
    player2 = Player.new(name, "O")
else
    player2 = Player.new("Player-2", "O")
end
puts "#{player2}\n"

puts "Rules:"
puts "The game is played one player at a time"
puts "Each player can choose a name for themselves, however, player-1 and player-2 are default names"
puts "A move is made when a player chooses a mark on the grid"
puts "moves cannot be overridden by another player"
puts "There is a win if a player marks a complete row, column or diagonal space on the grid."

board = Board.new
board.display
loop do 
    loop do
        print "#{player1.name} move (1-9): "
        move = gets.chomp
        if player1.make_move?(move, board)
            board.display
            break
        end
    end
    result = board.victory
    if !result.nil?
        if result.eql? player1.symbol
            puts "#{player1.name} won"
            break
        end
    elsif board.tie?
        puts "It was a tie"
        break
    end
    loop do
        print "#{player2.name} move (1-9): "
        move = gets.chomp
        if player2.make_move?(move, board)
            board.display
            break
        end
    end
    result = board.victory
    if !result.nil?
        if result.eql? player2.symbol
            puts "#{player2.name} won"
            break
        end
    elsif board.tie?
        puts "It was a tie"
        break
    end
end

