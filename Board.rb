require 'colorize'
require 'win32console' # colors wouldn't appear without it

class Board

  @board
  PLAYER_COLOR_CONST = :yellow
  WALL_COLOR_CONST = :red
  STAR_COLOR_CONST = :green

  # creates an array with the specified size
  def initialize(size)
    @board = Array.new(size) {Array.new(size){ '*' } }
  end

  # Draw board in terminal
  def draw
    row = 0
    # repeats the proces n times so as to print every row in the array
    @board.size.times do
      col = 0
      @board[row].size.times do 

        # color the player icon
        # creates spacing between each item so it looks nicer
        if @board[row][col] == 'A'
          print @board[row][col].colorize(PLAYER_COLOR_CONST) + '  ' 
        elsif @board[row][col] == '#'
          print @board[row][col].colorize(WALL_COLOR_CONST) + '  '
        elsif @board[row][col] == '*'
          print @board[row][col].colorize(STAR_COLOR_CONST) + '  '
        end
        col += 1

      end
      puts
      row += 1
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
