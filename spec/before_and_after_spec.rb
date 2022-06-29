RSpec.describe 'before and after hook' do
  before(:context) do
    puts '>> Before context!'
  end

  after(:context) do
    puts '>> After context!'
  end

  before(:example) do
    puts '- Before example hook'
  end

  after(:example) do
    puts '- After example hook'
  end

  it 'is just a random example' do
    expect(5 * 5).to eq(25)
  end

  it 'is just another random example' do
    expect(2 * 10 - 5).to eq(15)
  end
end
