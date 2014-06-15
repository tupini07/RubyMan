#! /usr/bin/ruby

require_relative 'player'

# the size of the array will be n x n
puts "What size will the board be?"
n = gets.chomp.to_i

# creates a n by n 2D array
arr = Array.new(n) {Array.new(n){ '*' } }

# creates a player
ply = Player.new(0,0,arr)

# puts a '#' int the position arr[2][2].
arr[2][2] = '#'

#repeat indefinately
while true do
 system("clear") # clears the terminal every loop (to make it nice :D ) 
 o = 0

 # repeats the proces n times so as to print every row in the array
 n.times do
	 print arr[o, 1]
	 puts
	 o += 1
 end
 
 # gets an input from the user correponding to the direction
 tt = gets.chomp
 
  
 ply.move(tt)
 
end # end the loop
