require 'to_do'

RSpec.describe 'to_do method' do
    it 'checks if given string contains #TODO' do
    result = to_do('check123')
    expect(result).to eq false
    end
end