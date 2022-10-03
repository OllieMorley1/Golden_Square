require 'diary'
require 'diary_entry'

RSpec.describe 'Diary Integration' do 
    it 'returns list of entries' do
        entry = DiaryEntry.new('Title', 'Content')
        entry2 = DiaryEntry.new('Title2', 'Content2')
        diary = Diary.new
        diary.add(entry)
        diary.add(entry2)
        expect(diary.all).to eq [entry, entry2]
    end

    it 'counts the words of all entries' do
            diary = Diary.new
            diary_entry1 = DiaryEntry.new("title", "contents")
            diary_entry2 = DiaryEntry.new("title", "contents")
            diary.add(diary_entry1)
            diary.add(diary_entry2)
            expect(diary.count_words).to eq 2
    end

    it 'calculates reading time' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("title", "contents here one two three four")
        expect(diary_entry1.reading_time(2)).to eq 3
     end

     it 'finds best entry for reading' do
        diary = Diary.new
        entry1 = DiaryEntry.new("title", "test " * 300)
        entry2 = DiaryEntry.new("title", "test" * 100)
        diary.add(entry1)
        diary.add(entry2)
        result = diary.find_best_entry_for_reading_time(60, 2)
        expect(result).to eq entry2
     end
end

        

