require_relative 'player'

describe Player do
  before do
    @initial_health = 100
    @player = Player.new('moe', @initial_health)
  end

  it 'has a capitalized name' do
    expect(@player.name).to eq('Moe')
  end

  it 'has initial health of' do
    expect(@player.health).to eq(100)
  end

  it 'has a string representation' do
    expect(@player.to_s).to eq('Moe (100)')
  end

  it 'it increases health by 15 when wooted' do
    @player.w00t
    expect(@player.health).to eq(@initial_health + 15)
  end

  it 'it decreases health by 10 when blammed' do
    @player.blam
    expect(@player.health).to eq(@initial_health - 10)
  end

  it 'score should be health + number of letters in a name' do
    expect(@player.score).to eq(@initial_health + @player.name.length)
  end

  context 'player with a default health' do
    before do
      @player = Player.new('moe')
    end

    it 'has health of 100' do
      expect(@player.health).to eq(100)
    end
  end

  context 'with health of at least 100' do
    before do
      @player = Player.new('moe', 100)
    end
    it 'is strong' do
      expect(@player.status).to eq('Strong')
    end
  end

  context 'with health of at less than 50' do
    before do
      @player = Player.new('moe', 50)
    end
    it 'is weak' do
      expect(@player.status).to eq('Weak')
    end
  end

  context 'with health of between 51 and 99' do
    before do
      @player = Player.new('moe', 60)
    end
    it 'is average' do
      expect(@player.status).to eq('Average')
    end
  end
end
