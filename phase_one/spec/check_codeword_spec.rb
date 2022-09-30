require 'check_codeword'

RSpec.describe 'check_codeword method' do
    it 'checks if codeword is correct' do 
        result = check_codeword('horse')
        expect(result).to eq 'Correct! Come in.'
    end

    it 'checks if codeword is close' do
        result = check_codeword('have')
        expect(result).to eq 'Close, but nope.'
    end

    it 'checks if codeword is wrong' do 
        result = check_codeword('anything else')
        expect(result).to eq 'WRONG!'
    end
end

    

