require_relative '../lib/player.rb'

RSpec.describe Player do
  let(:player) { Player.new("Ansar") }
  describe "#Player" do
    it "returns name" do
      expect(player.name).to eql(name)
    end
    it "Returns player's object score attribute initialsed to 0" do
      expect(player.amount).to eql(0)
    end
  end

  describe '#Player.choice' do
    it 'Returns a player object with the attribute choice set to the given value' do
      player.piece = 'x'
      expect(player.piece).to eql('x')
    end
    it 'Returns a player object with the attribute choice set to the given value' do
      player.piece = 'o'
      expect(player.piece).to eql('o')
    end
  end
end
