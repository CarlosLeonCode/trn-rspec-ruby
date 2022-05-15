require_relative '../models/card.rb'

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = "Pacman!"
    comparison = "Spades"
    expect(card.suit).to eq(comparison), "Hey, I expect #{comparison} but I got #{ card.suit }"
  end
end
