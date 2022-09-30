require 'report_length'

RSpec.describe 'report_length method' do
    it 'Returns correct length of string' do 
        result = report_length('Testing123')
        expect(result).to eq 'This string was 10 characters long.'
    end
end