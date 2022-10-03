# File: lib/diary.rb
class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
        @entries.sum(&:count_words)
    end
  
    def reading_time(wpm)
        return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        readable_entries = @entries.filter do |entry|
            entry.reading_time(wpm) <= minutes
           end
           return readable_entries[0]
    end
  end

