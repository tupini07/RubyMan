#! /usr/bin/ruby

require_relative 'player'
require_relative 'Board'
require_relative 'LoadLevel'

require 'io/console'

brd = nil
ply = nil

# if CL argument exists
if ARGV[0]
	# creates board and player from level passed through CL arguments
	brd, ply = load_level_from_args
else

	# the size of the array will be n x n
	puts "What size will the board be?"
	n = gets.chomp.to_i

	# creates a board
	brd = Board.new(n)

	# creates a player
	ply = Player.new(0,0,brd.get_board())

	# puts a '#' int the position [2][2].
	brd.set_obstacle(2,2)
end


#repeat indefinately
while true do
 system("clear") # clears the terminal every loop (to make it nice :D ) 
 
 brd.draw() # draws the board
 
 # gets an input from the user correponding to the direction
 tt = STDIN.getch
 
 if tt == 'q'
 	system('clear')
 	break
 else
 	ply.move(tt)
 end
 
end # end the loop
