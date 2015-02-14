require_relative 'player'
require_relative 'game'

current_time = Time.new
formatted_time = current_time.strftime('%A %m/%d/%Y at %I:%M%p')

puts "\nYour game started on #{formatted_time}"

player1 = Player.new('moe')
player2 = Player.new('larry', 80)
player3 = Player.new('curly', 25)
player4 = Player.new('jimmy', 32)
player5 = Player.new('leo', 95)
player6 = Player.new('david', 45)
player7 = Player.new('mike', 55)
player8 = Player.new('lucy', 50)
player9 = Player.new('jamie')
player10 = Player.new('peter', 70)

knuckleheads = Game.new('Knuckleheads')
puts "\nHow many rounds do you want our game to have?"
number_of_rounds = gets.chomp.to_i
knuckleheads.game_title
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.add_player(player4)
knuckleheads.add_player(player5)
knuckleheads.add_player(player6)
knuckleheads.add_player(player7)
knuckleheads.add_player(player8)
knuckleheads.add_player(player9)
knuckleheads.add_player(player10)
knuckleheads.play(number_of_rounds)
knuckleheads.print_stats

puts "\nGAME OVER!!!"
