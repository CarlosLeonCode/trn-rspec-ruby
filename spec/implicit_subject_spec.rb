RSpec.describe Array do
  it 'is with 0 and 1 element' do
    expect(subject.length).to eq(0)
    subject << 1
    expect(subject.length).to eq(1)
  end
end
