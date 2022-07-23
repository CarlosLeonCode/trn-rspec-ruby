require_relative '../../models/wizard.rb'

RSpec.describe 'have_attributes matcher' do
  describe Wizard.new('Hermione', 'Gryffindor') do
    it 'long sintax' do
      expect(subject).to have_attributes(name: 'Hermione')
      expect(subject).to have_attributes(name: 'Hermione', house: 'Gryffindor')
    end

    it { is_expected.to have_attributes(name: 'Hermione') }
  end
end
