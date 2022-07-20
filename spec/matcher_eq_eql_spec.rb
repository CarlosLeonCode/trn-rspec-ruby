RSpec.describe 'eq and eql matchers' do
  let(:a) { 3 }
  let(:b) { 3.0 }

  describe 'eq matcher' do
    it 'test only the values' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'test the value and the class type' do
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:a) { [1, 2, 3] }
    let(:b) { [1, 2, 3] }
    let(:c) { a } 

    it 'cares about object identity' do
      expect(a).to eq(b)
      expect(a).to eql(b)

      expect(a).to equal(c)
      expect(a).to be(c)

      expect(a).not_to be(b)
    end
  end


  # eq -> Compares values
  # eql -> Compares Type and value, it's to say the same class
  # equal and be -> Compares the object identity, the same object in memory
end
