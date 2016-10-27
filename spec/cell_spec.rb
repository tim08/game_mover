require '../cell'

RSpec.describe Cell do

  it 'should exists' do
    Cell.new(0, 5)
  end

  it 'set coordinates' do
    cell = Cell.new(0,5)
    expect(cell.coordinates).to eq [0,0]
  end

end