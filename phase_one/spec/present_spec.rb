require 'present'

RSpec.describe Present do
    it 'wraps + unwraps content successfully' do
        test = Present.new
        test.wrap('wrap me')
        result = test.unwrap
        expect(result).to eq 'wrap me'
    end

    it 'fails if contents already exist' do
        test = Present.new
        test.wrap('test')
        expect { test.wrap (5) }.to raise_error "A contents has already been wrapped."
    end

    it 'unwrap fails if no contents have been wrapped' do
        test = Present.new
        expect { test.unwrap }. to raise_error "No contents have been wrapped."
    end
end