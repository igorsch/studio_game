# require 'rubygems'
# require 'rspec'
require_relative 'game'
require_relative 'player'

describe Game do
  before do
    @game = Game.new('Knuckleheads')

    @initial_health = 100
    @player = Player.new('moe', @initial_health)

    @game.add_player(@player)
  end

  it "increases player's health by 12 when high # is rolled" do
    # Die.
    dice = double(Die, roll: 5)
    allow(Die).to receive(:new).and_return(dice)

    @game.play
    expect(@player.health).to eq(@initial_health + 12)
  end

  it "decreases player's health by 10 when low # is rolled" do
    # Die.any_instance.stub(:roll).and_return(2)
    dice = double(Die, roll: 2)
    allow(Die).to receive(:new).and_return(dice)
    @game.play

    expect(@player.health).to eq(@initial_health - 10)
  end

  it 'skips player when mid # is rolled' do
    # Die.any_instance.stub(:roll).and_return(4)
    dice = double(Die, roll: 4)
    allow(Die).to receive(:new).and_return(dice)

    @game.play

    expect(@player.health).to eq(@initial_health)
  end
end
