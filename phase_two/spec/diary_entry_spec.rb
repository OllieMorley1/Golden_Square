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
        test4 = DiaryEntry.new('Title', 'contents ' * 100)
        expect(test4.reading_time(50)).to eq 2
    end

    it 'returns a string with a chunk of contents' do
        test5 = DiaryEntry.new('Title', 'test ' * 20)
        expect(test5.reading_chunk(5, 1)).to eq 'test test test test test'
    end

    it 'returns the next chunk in contents' do
        test6 = DiaryEntry.new('Title', 'one two three')
        test6.reading_chunk(1, 2)
        result = test6.reading_chunk(1, 2)
        expect(result).to eq 'three'
    end

    it 'returns to the beginning once contents are fully read' do
        test7 = DiaryEntry.new('Title', 'one two three')
        test7.reading_chunk(1, 2)
        test7.reading_chunk(1, 2)
        result = test7.reading_chunk(1, 2)
        expect(result).to eq 'one two'
    end
end
