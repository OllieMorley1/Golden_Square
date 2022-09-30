require 'string_builder'

RSpec.describe StringBuilder do
    it 'returns a given string' do
        new_string = StringBuilder.new
        new_string.add('Test')
        result = new_string.output
        expect(result).to eq 'Test'
    end

    it 'returns length of given string' do
        new_string = StringBuilder.new
        new_string.add('test')
        result = new_string.size
        expect(result).to eq 4
    end
end
        
