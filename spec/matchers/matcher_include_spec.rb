RSpec.describe 'include matcher' do
  describe 'chocolate and coffee' do
    it 'check for substrings' do
      expect(subject).to include('choc')
      expect(subject).to include('late')
      expect(subject).to include('coffee')
    end

    it { is_expected.to include('and') }
  end

  describe [9, 8, 7] do
    it 'check values' do
      expect(subject).to include(9)
    end

    it { is_expected.to include(8, 7) }
  end
end
