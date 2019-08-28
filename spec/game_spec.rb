require_relative '../lib/game.rb'

RSpec.describe Game do
  let(:grid) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}
  let(:result) { Game.new(grid)}
  describe "# Result" do
    it "grid and with pieces" do
     expect(result.grid).to eql(grid)
    end
  end

  describe "winning positions" do
    let(:horizontal_position) { [[1, 2, 3], %w[X X X], [7, 8, 9]] }
    let(:vertical_position) {[['X', 2, 3], ['X', 5, 6], ['X', 8, 9]]}
    let(:diagonal_position) { [['X', 2, 3], [4, 'X', 6], [7, 8, 'X']] }
    let(:result1) { Game.new(horizontal_position) }
    let(:result2) { Game.new(vertical_position) }
    let(:result3) { Game.new(diagonal_position) }
    it 'Returns true when there is a matching horizontally' do
        expect(result1.win_game).to eql(true)
    end
    it 'Returns true when there is a matching vertically' do
        expect(result2.win_game).to eql(true)
    end
    it 'Returns true when there is a matching diagonally' do
        expect(result3.win_game).to eql(true)
    end
    it 'Returns false when there is no matching any position to win' do
        expect(result.win_game).to eql(false)
    end
  end
end