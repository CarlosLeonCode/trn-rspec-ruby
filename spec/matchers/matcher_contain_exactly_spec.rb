RSpec.describe 'contain_exactly matcher' do
  subject { [1, 5, 10] }

  describe 'long sintax' do
    it 'should check for the presence of all elementos but doesn\'t matter its order' do
      expect(subject).to contain_exactly(1, 10, 5)
      expect(subject).to contain_exactly(10, 1, 5)
      expect(subject).to contain_exactly(5, 1, 10)
    end
  end

  describe 'short sintax' do
    it { is_expected.to contain_exactly(1, 10, 5) }
  end

  describe 'validating its content but with its exact order' do
    it { is_expected.to eq([1, 5, 10]) }
  end
end
