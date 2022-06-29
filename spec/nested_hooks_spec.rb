RSpec.describe 'nested hooks' do
  before(:context) do
    puts '-> OUTER: Before context hook'
  end

  before(:example) do
    puts '-> OUTER: Before example hook'
  end

  it "is a basic math operation" do
    expect(2 * 2).to eq(4)
  end

  context 'more basic math operations' do
    before(:context) do
      puts '---> INNER: Before context hook'
    end

    before(:example) do
      puts '---> INNER: Before example hook'
    end

    it 'is a add operation' do
      expect(5 + 54).to eq(59)
    end

    it 'is a substraction' do
      expect(58 - 6).to eq(52)
    end
  end
end
