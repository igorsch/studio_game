class Player
  attr_accessor :name
  attr_accessor :health

  def initialize(name, health = 100)
    self.name = name.capitalize
    self.health = health
  end

  def to_s
    "#{name}" #(#{health})"
  end

  def responce
    "#{name} has a health of #{health} and a score of #{score}."
  end

  def <=>(other)
    other.health <=> health
  end

  def print_name_and_health
    "#{name.to_s.ljust(20, '.')}#{health}"
  end

  def status
    if strong?
      'Strong'
    elsif weak?
      'Weak'
    elsif average?
      'Average'
    end
  end
  
  def strong?
    health >= 100
  end

  def weak?
    health <= 50
  end

  def average?
    (51..99).include?(health)
  end

  def blam
    self.health -= 10
    puts "\n#{name} got blammed!"
  end

  def w00t
    self.health += 15
    puts "\n#{name} got wooted!"
  end

  def skipped
    puts "\n#{name} was skipped"
  end

  def score
    health + name.length
  end
end

if __FILE__ == $0
  player1 = Player.new('moe')
  player2 = Player.new('larry', 60)
  player3 = Player.new('curly', 125)

  players = [player1, player2, player3]

  puts "There are #{players.size} player s in a game:"
  puts players
  players.each do |p|
    puts p.responce
  end
  puts player2.print_name_and_health
end
