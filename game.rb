require_relative 'player'
require_relative 'turn'

class Game
  def initialize
    player1 = Player.new('player 1')
    player2 = Player.new('player 2')
    @players = [player1, player2]
  end

  def play
    c_player = 0
    max_round = 10
    while(!game_over? && max_round > 0)
      puts "#{@players[c_player].name}'s turn"
      turn = Turn.new()
      answer = turn.next()
      if(answer == true)
        @players[c_player].add_score()
      else
        @players[c_player].take_damage()
      end
      if c_player == 0
        c_player = 1
      else 
        c_player = 0
      end
      max_round -= 1
    end
    winning_player = alive_players[0].name
    puts "Winner is #{winning_player}!"
  end

  private
  def alive_players
    @players.select do |p|
      not p.dead? 
    end
  end

  def game_over?
    alive_players.count == 1
  end

end