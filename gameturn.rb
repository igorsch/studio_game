require_relative 'player'
require_relative 'die'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    case die.roll
    when 1..2
      player.blam
    when 3..4
      player.skipped
    else
      player.w00t
    end
    puts player.responce
  end
end
