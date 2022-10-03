require 'reading_time'

RSpec.describe 'reading_time method' do
    it 'calculates estimated reading time for a string' do
        result = reading_time('1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25')
        expect(result).to eq 7.5
    end
end