require_relative '../../models/vehicle.rb'

RSpec.describe Vehicle do

  it 'long sintex' do
    expect(subject).to respond_to(:turn_on, :turn_off)
    expect(subject).to respond_to(:command_to_car).with(1).arguments
  end

  it { is_expected.to respond_to(:turn_on, :turn_off) }
  it { is_expected.to respond_to(:command_to_car).with(1).arguments }
end
