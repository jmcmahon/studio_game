require_relative 'player'
require_relative 'die'

class Game
  attr_reader :title
  def initialize(title)


    @title = title
    @players = []
  end
  def add_player(player)
    @players << player
  end
  def play
    puts "There are #{@players.size} players in #{@title}:"
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      die = Die.new
      number_rolled = die.roll
      case die.roll
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped."
      else
        player.w00t
      end
      puts player
    end
  end
end

if __FILE__ == $0
  mygame= Game.new("myteam")
  mygame.add_player(Player.new("moe"))
  mygame.add_player(Player.new("larry", 105))
  mygame.play
end


