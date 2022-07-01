require_relative '../models/king.rb'

RSpec.describe King do
  subject { described_class.new('Excision') }
  let(:artix) { described_class.new('Artix') }

  it 'represent Dubstep artists!' do
    expect(subject.name).to eq('Excision')
    expect(artix.name).to eq('Artix')
  end
end
