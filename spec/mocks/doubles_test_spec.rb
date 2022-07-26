RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do    
    # For each question, write the code that should go here
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')


    fs = double('File System')
    allow(fs).to receive(:read).and_return('Romeo and Julieta')
    allow(fs).to receive(:write).and_return(false)

    expect(fs.read).to eq('Romeo and Julieta')
    expect(fs.write).to eq(false)
  end
end
