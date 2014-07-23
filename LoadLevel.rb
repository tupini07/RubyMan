
def load_level_from_args

  levelArray = []
  row = 0
  col = 0
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

  return brd, ply
end