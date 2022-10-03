require 'make_snippet'

RSpec.describe 'make_snippet method' do 
    it 'returns the first 5 words as a new string followed by ...' do
        result = make_snippet('My name is Ollie and I like to code in Ruby')
        expect(result).to eq 'My name is Ollie and...'
    end
end
    