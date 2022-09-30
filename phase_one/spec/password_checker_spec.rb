require 'password_checker'

RSpec.describe PasswordChecker do
    it 'returns true if passwords >= 8 chars' do 
        test = PasswordChecker.new
        expect(test.check('12345678')).to eq true
    end

    it 'fails if password < 8 chars' do
        test = PasswordChecker.new
        expect { test.check('12345') }.to raise_error "Invalid password, must be 8+ characters."
    end
end
