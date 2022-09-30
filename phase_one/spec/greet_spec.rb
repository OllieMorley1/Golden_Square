require 'greet'

RSpec.describe 'greet method' do 
    it 'returns hello + name variable!' do
        result = greet('Ollie') 
        expect(result).to eq 'Hello, Ollie!'
    end
end
