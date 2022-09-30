require 'add_3'

RSpec.describe 'add_3 method' do 
    it 'adds 3 to 3 to return 6' do
        result = add_3(3)
        expect(result).to eq 6
    end
end