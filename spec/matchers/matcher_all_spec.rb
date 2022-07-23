RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    expect([1, 2, 3]).to all(be < 5)
    expect([1, 7, 11]).to all(be_odd)
    expect([2, 6, 4]).to all(be_even)
    expect([[], []]).to all(be_empty)
  end

  describe [2, 3, 4] do
    it { is_expected.to all(be < 10) }
    it { is_expected.to all(be > 0) }
  end
end
