require_relative '../lib/board.rb'

RSpec.describe Board do
  let(:board) { Board.new }
  describe "#Board" do
    it "grid interface" do
      expect(board.grid).to eql([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    end
    it "Return default value of counter = 0" do
      expect(board.counter).to eql(0)
    end
  end

  describe "# move" do
    it "Returns win_game false, counter and grid when with moved piece" do
      expect(board.move('X', 1)).to eql([false, 1, [['X', 2, 3], [4, 5, 6], [7, 8, 9]]])
    end
    it "Returns win_game method return true, counter and grid with moved piece" do
      board_win = Board.new([[1, 'X', 'X'], [4, 5, 6], [7, 8, 9]])
      expect(board_win.move('X', 1)).to eql ([true, 1, [%w[X X X], [4, 5, 6], [7, 8, 9]]])
    end
  end
end
