require_relative 'player'
require_relative 'die'

module GameTurn
  def self.take_turn(player)
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
  end
end

