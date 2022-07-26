require_relative '../../models/mocks/test_movie.rb'

RSpec.describe Movie do
  let(:harry_double) { double('Harry double', ready?: true, act: 'New spell', fall_off_leadder: 'YAY!', light_on_fire: 'Limux') }
  subject { described_class.new(harry_double) }

  describe '#start_shooting method' do
    it 'expects an actor to do 3 actions' do
      expect(harry_double).to receive(:ready?)
      expect(harry_double).to receive(:act)
      expect(harry_double).to receive(:fall_off_leadder)
      expect(harry_double).to receive(:light_on_fire)
      subject.start_shooting
    end
  end
end
