class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @latest_word = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      no_of_words = words.length
      return no_of_words
    end
  
    def reading_time(wpm)
        return (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)
        words_read = wpm * minutes
        start = @latest_word
        finish = @latest_word + words_read
        word_arr = words[start, finish]
        if finish >= count_words
            @latest_word = 0
        else @latest_word = finish
        end
        return word_arr.join(' ')

      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end

    private
    def words
        return @contents.split(' ')
    end
  end