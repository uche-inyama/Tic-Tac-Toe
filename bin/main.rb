require '../lib/board'
require '../lib/player'

puts "Welcome Message"

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

puts "Rules"

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
    result = board.game_over
    if !result.nil?
        if result.eql? player1.symbol
            puts "#{player1.name} won"
            break
        end
    end
    loop do
        print "#{player2.name} move (1-9): "
        move = gets.chomp
        if player2.make_move?(move, board)
            board.display
            break
        end
    end
    result = board.game_over
    if !result.nil?
        if result.eql? player2.symbol
            puts "#{player2.name} won"
            break
        end
    end
end

