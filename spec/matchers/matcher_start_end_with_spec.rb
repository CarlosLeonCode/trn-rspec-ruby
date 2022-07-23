RSpec.describe 'start_witg and end_with matchers' do
  describe 'alohomora' do
    it 'check for substring - starts and end with' do
      expect(subject).to start_with('alo')
      expect(subject).to end_with('ra')
    end

    it { is_expected.to start_with('al') }
    it { is_expected.to end_with('ora') }
  end

  describe [:a, :b, :i] do
    it { is_expected.to start_with(:a) }
    it { is_expected.to end_with(:i) }
  end
end
