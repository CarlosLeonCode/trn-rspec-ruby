## Describe as 'folder' to organize or examples
We can use describe to organizar our examples. It's more common 
use the *context* statement.

### Example:
```ruby
RSpec.describe '#even? method' do

  describe 'with even number' do
    it 'should return true' do
      expect(4.event?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.event?).to eq(false)
    end
  end
end
```
