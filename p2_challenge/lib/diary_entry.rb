class DiaryEntry
    def initialize(title, contents)#str, str
        @title = title
        @contents = contents
    end

    def title
        return @title
    end

    def extract_phone_number
        return words.find {|x| x.start_with?('0')}
    end

    def contents
        return @contents
    end

    def count_words
    return words.length
    end

    def reading_time(wpm)#integer
    return count_words / wpm
    end

    def words
    return @contents.split(' ')
    end
end