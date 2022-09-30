require 'gratitudes'

RSpec.describe Gratitudes do
    it 'adds gratitudes to array' do
        test = Gratitudes.new
        test.add('test')
        result = test.format
        expect(result).to eq 'Be grateful for: test'
    end

    it 'can add more than one argument' do
        test = Gratitudes.new
        test.add('test')
        test.add('test2')
        result = test.format
        expect(result).to eq 'Be grateful for: test, test2'
    end
    
end
