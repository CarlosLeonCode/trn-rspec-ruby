require_relative '../models/programming_language.rb'

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new(name: 'Python') }

  it 'should store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no argument' do
    let(:language) { ProgrammingLanguage.new }

    it 'should be the default name' do
      expect(language.name).to eq('Ruby')
    end
  end
end
