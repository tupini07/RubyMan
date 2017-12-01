def load_level_from_args

  levelArray = []
  row = 0
  col = 0
  count = 0
	File.open(ARGV[0]).each_line {|line| levelArray.push line}

	# Find the player start location so it can be set when creating player object
	
	foundPlayer = false
	levelArray.size.times do |y|
	  levelArray[y].size.times do |x|
	    if levelArray[y][x] == 'A'
		  col = x
          row = y
	    end
		count +=1 if levelArray[y][x] == "*"
	  end
	end

	# Creates board with empty array, sets board after
	
	brd = Board.new(0)
	brd.set_board(levelArray)
	brd.star_count = count
	ply = Player.new(col,row,brd.get_board())

  return brd, ply
end