RSpec.describe 'sorthand syntax' do
  subject { 5 }

  context 'with classic sintax' do
    it 'should equal to 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
