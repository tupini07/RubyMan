require_relative 'character'


class Player < Character

  @score = 0

	# sets the initial position of the player, by sending parameters
  def initialize( x, y, board )
    set_x_position(x)
    set_y_position(y)
    set_board(board)
    draw_in_board('A')
      @score = 0
  end


	# accepts user input and moves
  def move(key)
    get_board[get_y_pos][get_x_pos] = ' ' # sets the current position to empty string (star eaten) before moving
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
    eatStar
    draw_in_board('A') # sets the current position to A
  end

  # eat a star, deleting it from the level and adding to player score
  def eatStar
    if get_board[get_y_pos][get_x_pos] == '*'
      @score += 1
    end
    puts "Score : " + @score.to_s
  end


end

