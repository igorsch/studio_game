require_relative 'player'
require_relative 'die'
require_relative 'treasures'

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
    treasures = Treasure_Chest.random
    # puts "#{player.name} found a #{treasures.name} and got #{treasures.value} points health increase."
    # player.health += treasures.value
    puts player.responce
    player.found_treasures(treasures)
  end
end
