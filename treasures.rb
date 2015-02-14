Treasure = Struct.new(:name, :value)

module Treasure_Chest
  TREASURES = [
    Treasure.new(:pie, 5),
    Treasure.new(:bottle, 25),
    Treasure.new(:hammer, 50),
    Treasure.new(:skillet, 100),
    Treasure.new(:broomstick, 200),
    Treasure.new(:crowbar, 400)
  ]
  
  def self.random
    TREASURES.sample
  end
end

if __FILE__ == $0
  treasure = Treasure_Chest.random
  puts "#{treasure.name.capitalize} has health value of #{treasure.value}"
end
