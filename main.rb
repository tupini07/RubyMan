#! /usr/bin/ruby

require_relative 'player'
require_relative 'Board'

# the size of the array will be n x n
puts "What size will the board be?"
n = gets.chomp.to_i

# creates a board
brd = Board.new(n)

# creates a player
ply = Player.new(0,0,brd.get_board())

# puts a '#' int the position [2][2].
brd.set_obstacle(2,2)

#repeat indefinately
while true do
 system("clear") # clears the terminal every loop (to make it nice :D ) 
 
 brd.draw() # draws the board
 
 # gets an input from the user correponding to the direction
 tt = gets.chomp
 
  
 ply.move(tt)
 
end # end the loop
