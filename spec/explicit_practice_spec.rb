RSpec.describe Array do
  subject(:sally) do
    ['hey', 'dude']
  end

  it 'subject a length of 2 and 1' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'subject as original array' do
    expect(sally).to eq(['hey', 'dude'])
  end
end
