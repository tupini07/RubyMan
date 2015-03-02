#! /usr/bin/ruby

['Player', 'Board', 'LoadLevel'].each{|f|require_relative f}

require 'io/console'

brd = nil
ply = nil

# If CL argument exists
if ARGV[0]
	# Creates board and player from level passed through CL arguments
	brd, ply = load_level_from_args
else

	# The size of the array will be n x n
	puts "What size will the board be?"
	n = gets.chomp.to_i

	# Creates a board
	brd = Board.new(n)

	# Creates a player
	ply = Player.new(0,0,brd.get_board())

	# Puts a '#' int the position [2][2].
	brd.set_obstacle(2,2)
end

#Repeat indefinately

while true do
 system("clear")       # Clears the terminal every loop (to make it nice :D ) 
 
 brd.draw()            # Draws the board
 
 # Gets an input from the user correponding to the direction
 tt = STDIN.getch
 
 if tt == 'q'
 	system('clear')
 	break
 else
 	ply.move(tt)
 end
 
end                    # End the loop
