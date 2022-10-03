require 'diary_entry'

RSpec.describe DiaryEntry do
    it 'returns title + contents' do
        test1 = DiaryEntry.new('Hello', 'This is a string')
        expect(test1.title).to eq 'Hello'
        expect(test1.contents).to eq 'This is a string'
    end

    it 'counts words' do
        test2 = DiaryEntry.new('Title', 'Some contents please')
        expect(test2.count_words).to eq 3
    end
    
    it 'returns zero when empty' do
        test3 = DiaryEntry.new('Title', '')
        expect(test3.count_words).to eq 0
    end

    it 'calculates reading time' do
        test4 = DiaryEntry.new('Title', 'Contents here please')
        expect(test4.reading_time(50)).to eq 0.08
    end
end
