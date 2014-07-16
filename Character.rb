class Character

	# variables for tracking the current position of the charac
	@board
	@x = 0 # position in the x dimension
	@y = 0 # position in the y dimension
	
	#makes @grid the same as the board
	def initialize (board)
		set_board(board)
	end

	# every movement method checks will make nothing if the space where
	# the user wants to move to contains a '#'
	#
	# moves up one space. In the X dimension
	
	def move_up 
		
		@y -= 1 unless @y == 0 || @board[(@y - 1)][@x] == "#" 
		# remeber that the first row is 0
	end
	
	# moves one space to the right in the Y dimension
	def move_right
		@x += 1 unless @x == (@board[0].size - 1)  || @board[@y][(@x + 1)] == "#"
	end

	# moves one space down in the x dimension
	def move_down
		@y += 1 unless @y == (@board.size - 1) || @board[(@y + 1)][@x] == "#"
	end
	
	# moves one space to the left in Y dimension
	def move_left
		@x -= 1 unless @x == 0 || @board[@y][(@x - 1)] == "#"
	end
	
	#changes board
	def set_board( board )
		@board = board
	end

	#gets board
	def get_board
		@board 
	end

	# changes position_x
	def set_x_position( pos )
		@x = pos
	end

	#changes position_y
	def set_y_position( pos )
		@y = pos
	end
	
	
	# draws the character in the board
	def draw_in_board(char)
		@board[@y][@x] = char 
	end
	
	def get_x_pos
		return @x
	end
	
	def get_y_pos
		return @y
	end
	
	

end

