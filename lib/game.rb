class Game
  attr_accessor :current_sticks, :player1, :player2

  def initialize(current_sticks, player1, player2)
    @current_sticks = current_sticks
    @player1 = player1
    @player2 = player2
  end

  def take_turn(current_player)
    @current_player = current_player
    if @current_player == player1
      @current_player = player2
    else
      @current_player = player1
    end
  end

  def pick_up_sticks(sticks)
    @sticks = sticks
    @current_sticks -= sticks
  end

  def game_over?(current_sticks)
    if current_sticks <= 0
      true
    else
      false
    end
  end

end
