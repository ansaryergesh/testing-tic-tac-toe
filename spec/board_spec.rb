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

 
end
