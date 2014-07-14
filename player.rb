require_relative 'character'


class Player < Character
	

	# sets the initial position of the player, by sending parameters
	def initialize( x, y, board )
		set_x_position(x)
		set_y_position(y)
		set_board(board)
		draw_in_board('A')
		set_color(:yellow)
	end
	

	# accepts user input and moves
	def move(key)
	  get_board[get_y_pos][get_x_pos] = '*' # sets the current position to * before moving
	  case key 
     		when "w"
	  		move_up
     		when "a"
	  		move_left
     		when "d"
     			move_right
     		when "s"
     			move_down
     		else
	  		puts "I have no idea what to do with that."
 	  end # ends case
 	  draw_in_board('A') # sets the current position to A
	end


	# set the color of the player in command line
	def set_color(color)
		@color = color
	end

	def get_color
		return @color
	end

end

