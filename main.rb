#! /usr/bin/ruby

require_relative 'player'
require_relative 'Board'

require 'io/console'

levelArray = []
row = 0
col = 0
if ARGV[0]
	File.open(ARGV[0]).each_line do |line|
	  levelArray.push line
	end

	# find the player start location so it can be set when creating player object
	foundPlayer = false
	levelArray.size.times do 
	  col = 0
	  levelArray[row].size.times do 
	    if levelArray[row][col] == 'A'
	      foundPlayer = true
	      break
	    end
	    col += 1
	  end
	  break if foundPlayer == true
	  row += 1
	end

	# creates board with empty array, sets board after
	brd = Board.new(0)
	brd.set_board(levelArray)
	ply = Player.new(col,row,brd.get_board())
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
