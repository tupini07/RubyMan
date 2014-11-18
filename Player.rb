require_relative 'character'

class Player < Character

  @score = 0

  # Sets the initial position of the player, by sending parameters
	
  def initialize( x, y, board )
    set_x_position(x)
    set_y_position(y)
    set_board(board)
    draw_in_board('A')
      @score = 0
  end

  # Accepts user input and moves
	
  def move(key)
    get_board[get_y_pos][get_x_pos] = ' '                  # Sets the current position to empty string (star eaten) before moving
    case key 
      when "w" then move_up
      when "a" then move_left
      when "d" then move_right
      when "s" then move_down
      else puts "I have no idea what to do with that."
    end                                                    # Ends case
    eatStar
    draw_in_board('A')                                     # Sets the current position to A
  end

  # Eat a star, deleting it from the level and adding to player score
  
  def eatStar
    @score += 1 if get_board[get_y_pos][get_x_pos] == '*'
    puts "Score : " + @score.to_s
  end

end