RSpec.describe 'Falsy and Truthy' do
  it 'can test for truthniness' do
    expect(true).to be_truthy
    expect('Hello').to be_truthy
    expect('').to be_truthy
    expect(5).to be_truthy
    expect(-4).to be_truthy
    expect(3.2).to be_truthy
    expect(:some_symbol).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 2 }
    expect(my_hash[:b]).to be_nil
  end
end
