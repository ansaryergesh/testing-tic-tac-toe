require_relative '../bin/main.rb'

describe '#valid_name' do
  let(:name) { 'Ansar' }
  it "Returns name if it is valid" do 
    expect(valid_name(name)).to eql('Ansar')
  end
end

describe "valid_piece" do
  let(:piece1) {"X"}
  let(:piece2) {"O"}
  it "Returns choice is it is valid" do
    expect(valid_piece(piece1)).to eql("X")
  end
  it "Returns choice is it is valid" do
    expect(valid_piece(piece2)).to eql("O")
  end
end

describe "#players_info" do
  let(:players) { players_info }
  it "Player objects" do
    allow_any_instance_of(Array).to receive(:shuffle).and_return('Ansar', 'x', 'Mike')
    expect(players[0].name).to eql("Ansar")
  end
  it "Player objects" do
    allow_any_instance_of(Array).to receive(:shuffle).and_return('Ansar', 'x', 'Mike')
    expect(players[1].name).to eql("Mike")
  end
end
  