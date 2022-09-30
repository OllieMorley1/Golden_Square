require 'test1'

RSpec.describe 'test1 method' do 
    it 'multiplies by 2' do
        result = test(5)
        expect(result).to eq 10
    end
end