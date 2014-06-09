#! /usr/bin/ruby

# the size of the array will be n x n
puts "What size will the board be?"
n = gets.chomp.to_i

# creates a n by n 2D array
arr = Array.new(n) {Array.new(n){ '*' } }

# to track the position of our character. 'A'
d1 = 0
d2 = 0

# sets the value in arr[d1][d2] to 'A'
arr[d1.to_f][d2.to_f] = 'A'
arr[2][2] = '#'

#repeat indefinately
while true do
 system("clear") # clears the terminal every loop (to make it nice :D ) 
 o = 0
 puts "d1 = #{d1}"
 puts "d2 = #{d2}"

 # repeats the proces n times so as to print every row in the array
 n.times do
	 print arr[o, 1]
	 puts
	 o += 1
 end
 
 # sets the current value of arr[d1][d2] to '*' 
 # so as to not have a los of 'A' around the "board"
 arr[d1.to_f][d2.to_f] = '*' 


 # gets an input from the user correponding to the direction
 tt = gets.chomp
 
 # evaluates the different optios for directions
 # notice that it will not move if the space where the user wants to move 'A'
 # contains a '#'
 case tt 
     when "w"
	  d1 = d1 - 1 unless d1 == 0 || arr[(d1 - 1)][d2] == "#"
     when "a"
	  d2 = d2 - 1  unless d2 == 0 || arr[d1][(d2 - 1)] == "#"
     when "d"
      	  d2 = d2 + 1  unless d2 == (arr[0].size - 1)  || arr[d1][(d2 + 1)] == "#"
     when "s"
	  d1 = d1 + 1  unless d1 == (arr.size - 1) || arr[(d1 + 1)][d2] == "#"
     else
	  puts "I have no idea what to do with that."
 end # ends case
 
 # set arr[d1][d2] with the new values of d1 and d2 to 'A'.. 
 # in other words.. it moves the charater
 arr[d1.to_f][d2.to_f] = 'A'

end # end the loop
