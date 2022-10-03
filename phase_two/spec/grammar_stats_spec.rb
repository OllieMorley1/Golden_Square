require 'grammar_stats'

RSpec.describe GrammarStats do
    it 'returns true or false depending on grammar' do
        test = GrammarStats.new
        expect(test.check('Hello.')).to eq true
    end

    it 'returns percentage of passed tests' do
        test = GrammarStats.new
        test.check('Hello.')
        test.check('Goodbye.')
        test.check('Hello')
        test.check('hello.')
        expect(test.percentage_good).to eq 50
    end
end
