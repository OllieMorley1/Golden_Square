require 'diary_entry'

RSpec.describe DiaryEntry do
    it 'returns name and contents of an entry' do
        entry = DiaryEntry.new('Title', 'Contents')
        expect(entry.title).to eq 'Title'
        expect(entry.contents).to eq 'Contents'
    end

    it 'counts the number of words in the contents of an entry' do
        entry = DiaryEntry.new('Title', 'Contents ' * 500)
        expect(entry.count_words).to eq 500
    end

    it 'estimates reading time' do
        entry = DiaryEntry.new('Title', 'Contents ' * 120)
        expect(entry.reading_time(60)).to eq 2
    end
end