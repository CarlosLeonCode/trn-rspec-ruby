RSpec.describe 'satisfy matcher' do
  subject { 'oso' }

  it 'is a palindrome' do
    # Without custom error message
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'accept custom err msm' do
    expect(subject).to satisfy('be a palindrome!!!') do |value|
      value == value.reverse
    end
  end

  it 'accept custom err msm' do
    expect(subject).to satisfy('be a palindrome!!!') { |value| value == value.reverse }
  end
end
