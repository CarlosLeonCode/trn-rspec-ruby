RSpec.describe 'Intro to doubles' do
  it 'define methods to be invoked | sintax 1' do
    # We define the double and the methids with its response
    wizard = double('Harry Potter', attack: 'Expelliarmus', game: 'Quidditch')
    expect(wizard.attack).to eq('Expelliarmus')
    expect(wizard.game).to eq('Quidditch')
  end

  it 'define methods to be invoked | sintax 2' do
    wizard = double('Harry Potter')
    allow(wizard).to receive(:attack).and_return('Expelliarmus')
    
    expect(wizard.attack).to eq('Expelliarmus')
  end

  it 'define methods to be invoked | sintax 3' do
    wizard = double('Harry Potter')
    # If the method receive a hash as last parameter we don't need to specify the '{}'
    allow(wizard).to receive_messages(attack: 'Expelliarmus')
    
    expect(wizard.attack).to eq('Expelliarmus')
  end
end
