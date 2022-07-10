class CustomLength
  def length
    3
  end
end

# * Share examples definition
RSpec.shared_examples 'length of the elements' do
  it 'should be equal to 3' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'length of the elements'
end

RSpec.describe String do
  subject { '123' }
  include_examples 'length of the elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }
  include_examples 'length of the elements'
end

RSpec.describe CustomLength do
  include_examples 'length of the elements'
end
