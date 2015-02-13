class Die
  def initialize
    roll
  end

  def roll
    @number = rand(1..6)
  end
end

if __FILE__ == $0
  number = Die.new
  puts number.roll
end
