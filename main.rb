#! /usr/bin/ruby

require_relative 'player'
require_relative 'Board'

require 'io/console'

# the size of the array will be n x n
puts "What size will the board be?"
n = gets.chomp.to_i

# creates a board
brd = Board.new(n)

# creates a player
ply = Player.new(0,0,brd.get_board())

# puts a '#' int the position [2][2].
brd.set_obstacle(2,2)

# allows board to access information about player
brd.set_player(ply)

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
