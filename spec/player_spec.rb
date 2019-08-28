require_relative '../lib/player.rb'

RSpec.describe Player do
  let(:player) { Player.new("Ansar") }
  describe "#Player" do
    it "returns name" do
      expect(player.name).to eql('Ansar')
    end
    it "Player's score amount is 0 at the begining" do
      expect(player.amount).to eql(0)
    end
  end

  describe '#Player.choice' do
    it 'Returns a players piece' do
      player.piece = 'x'
      expect(player.piece).to eql('x')
    end
    it 'Returns a players piece' do
      player.piece = 'o'
      expect(player.piece).to eql('o')
    end
  end
end
