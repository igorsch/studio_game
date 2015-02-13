require_relative 'player'
require_relative 'gameturn'

class Game
  attr_accessor :title

  def initialize(title)
    self.title = title
    @players = []
    @count = 0
  end

  def game_title
    puts "\nOur game is called \"#{title}\"\nAnd our players are:"
  end

  def add_player(a_player)
    @players.push(a_player)
  end

  def play(number_of_plays = 1)
    sorted_players = @players.sort # + "(#{self.health})"

      sorted_players.each do |player|
        puts "#{player} (#{player.health})"
      end
    number_of_plays.times do
      @count += 1
      puts "\nRound: #{@count}"
      @players.each do |b_player|
        GameTurn.take_turn(b_player)
      end
    end
  end

  def print_stats
    puts "\nAfter #{@count} rounds there are:"

    strong = @players.select &(:strong?) # { |player| player.strong? }
    average = @players.select &(:average?) # { |player| player.average? }
    weak = @players.select &(:weak?) # { |player| player.weak? }

    puts "\n#{strong.size} strong players:"
    puts strong.sort

    puts "\n#{average.size} average players:"
    puts average.sort

    puts "\n#{weak.size} weak players:"
    puts weak.sort
    
    sorted_players =  @players.sort { |a, b| b.health <=> a.health }
    
    puts "\n#{title} High Scores:"
    sorted_players.each do |player|
      puts player.print_name_and_health
      #formatted_name = (player.to_s).ljust(21, '.')
      #puts "#{formatted_name} #{player.health}"
    end
  end
end
