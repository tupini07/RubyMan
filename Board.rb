class Board
  @board
  # creates an array with the specified size
  def initialize(size)
    @board = Array.new(size) {Array.new(size){ '*' } }
  end

  # Draw board in terminal
  def draw
    o = 0
    # repeats the proces n times so as to print every row in the array
    @board.size.times do
      print @board[o, 1]
      puts
      o += 1
    end
    puts "\nPress 'q' to exit or the WASD keys to move"
  end

  # returns the current board array
  def get_board
    @board
  end

  # sets the board array
  def set_board(board)
    @board = board
  end

  # this method will be removed once the boards are loaded from an external file

  # sets obstacle
  def set_obstacle(y, x)
    @board[y][x] = '#'
  end

end
