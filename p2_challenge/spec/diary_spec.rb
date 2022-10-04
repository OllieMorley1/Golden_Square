require 'diary'
require 'diary_entry'

RSpec.describe Diary do
    it 'can return diary entries' do
        entry = DiaryEntry.new('Title', 'Contents')
        diary = Diary.new
        diary.add(entry, false)
        expect(diary.read('Title')).to eq 'Contents'
    end

    it 'can store multiple entries' do
        entry = DiaryEntry.new('Title1', 'Contents1')
        entry2 = DiaryEntry.new('Title2', 'Contents2')
        diary = Diary.new
        diary.add(entry, false)
        diary.add(entry2, false)
        expect(diary.read('Title2')).to eq 'Contents2'
        expect(diary.read('Title1')).to eq 'Contents1'
    end

    it 'adds entries to todo list' do
        entry = DiaryEntry.new('Title', 'Todo')
        diary = Diary.new
        diary.add(entry, true)
        expect(diary.todo_list).to eq ['Todo']
    end

    it 'completes entries on todo list' do 
        entry = DiaryEntry.new('Title', 'Todo')
        diary = Diary.new
        diary.add(entry, true)
        diary.complete('Todo')
        expect(diary.todo_list).to eq ['Todo - COMPLETE']
    end

    it 'scans for phone numbers and returns them' do
        entry = DiaryEntry.new('Title', '07756621319')
        diary = Diary.new
        diary.add(entry, false)
        expect(diary.contacts).to eq ['07756621319']
    end

    it 'returns suggested reading content based on reading time + wpm' do
        entry1 = DiaryEntry.new('Title', '07756621319')
        entry2 = DiaryEntry.new('Title2', 'test' * 20)
        diary = Diary.new
        diary.add(entry1, false)
        diary.add(entry2, false)
        expect(diary.suggest_entry(15, 1)).to eq '07756621319'
    end
end