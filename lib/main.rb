require_relative 'game'
require 'pry'

def main()
  to_play = playing?

  if to_play == 'y'
    game = new_game

    @current_player = game.player1

    until game.current_sticks < 2
      taking_turns(game)
    end
    
    puts "#{@current_player} loses!"

  elsif to_play == 'n'
    puts "Bye then"
  else
    puts 'Invalid entry'
  end

end

def playing?
  puts "Play? 'y' or 'n'> "
  answer = gets.chomp
end

def new_game
  print "How many players? '1' or '2'> "
  players = gets.chomp
  print "Player1 name: "
  player1 = gets.chomp
  print "Player2 name: "
  player2 = gets.chomp
  print 'How many starting sticks? 10 - 30> '
  current_sticks = gets.chomp.to_i

  game = Game.new(current_sticks, player1, player2)
  return game
end

def taking_turns(game)
  print "#{@current_player}, enter amount to pick up: "
  sticks = gets.chomp.to_i

  current_sticks = game.pick_up_sticks(sticks)

  puts "remaining sticks = #{current_sticks}"

  @current_player = game.take_turn(@current_player)
end

if __FILE__ == $PROGRAM_NAME
  main
end
