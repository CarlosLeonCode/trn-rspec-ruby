RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15

    expect(1).to be >= -1
    expect(1).to be >= 1

    expect(110).to be <= 150
    expect(55).to be <= 55
  end

  describe 250 do
    it { is_expected.to be > 10 }
  end
end
