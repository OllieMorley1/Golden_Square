require 'grammar'

RSpec.describe 'grammar method' do
    it 'Checks the first character is a capital letter' do
        result = grammar_check('hello')
        expect(result).to eq false
    end

    it 'Checks the last character is a full stop' do
        result = grammar_check('Is there one?')
        expect(result).to eq false
    end
end

