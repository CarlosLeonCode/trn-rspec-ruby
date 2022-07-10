RSpec.describe Array do

  it 'is using subject' do
    puts '-' * 10
    puts subject.length
    puts subject.class
    puts '-' * 10
  end

  it 'is using describe' do
    puts '*' * 10
    puts described_class
    puts described_class.class
    puts described_class.new.class
    puts '*' * 10
  end
end
