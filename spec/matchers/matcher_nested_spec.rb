RSpec.describe 25 do
  it 'can test for multiple matchers' do
    expect(subject).to be_odd.and be > 20
  end

  it { is_expected.to be_odd.and be > 20 }
end


RSpec.describe 'my phrase' do
  it 'supports multiple matchers on a single line' do
    expect(subject).to start_with('my').and end_with('se')
  end

  it { is_expected.to start_with('my').and end_with('rase') }
end


RSpec.describe [:colombia, :usa, :canada, :paris] do
  it 'can check multiple posibilities' do
    expect(subject.sample).to eq(:colombia).or eq(:usa).or eq(:paris).or eq(:canada)
  end
end

RSpec.describe 'firestruck' do  
  it { is_expected.to start_with('fire').and end_with('truck') }
end

RSpec.describe 20 do
  it { is_expected.to be_even.and respond_to(:times) }
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it { is_expected.to include(42).and start_with(4, 8, 15) }
end
