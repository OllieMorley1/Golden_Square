require 'count_words'

RSpec.describe 'count_words method' do
    it 'returns the number of words in a given string' do
        result = count_words('Check this out')
        expect(result).to eq 3
    end
end