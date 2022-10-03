require 'track_list'

RSpec.describe TrackList do
    it 'checks for an empty list' do
        test = TrackList.new
        expect(test.list).to eq 'No tracks added'
    end

    it 'adds tracks to the list' do
        test = TrackList.new
        test.add('Dancing Queen - ABBA')
        test.add('Man in the mirror - Michael Jackson')
        expect(test.list).to eq ['Dancing Queen - ABBA', 'Man in the mirror - Michael Jackson']
    end
end