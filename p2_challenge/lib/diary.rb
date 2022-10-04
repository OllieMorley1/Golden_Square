class Diary
    def initialize
    # create an empty hash to store title/entry pairs
    @entries = {}
    #create an empty array to store todo list
    @todo_list = []
    #create an empty array to store phone numbers
    @phone_numbers = []
    end

    def add(diary_entry, todo)#string, #bool
    #adds an instance of entry to the diary
    @entries[diary_entry.title] = diary_entry.contents
    #asks if entry should be added to todo list
    #adds entry to todo list if bool == true
    if todo == true then @todo_list << diary_entry.contents end
    #scans entry for phone number and adds to array if found
    @phone_numbers << diary_entry.extract_phone_number
    end


    def read(title)
    #return entry for given title
    return @entries[title]
    end


    def suggest_entry(wpm, time_available)#integer, integer
    #suggests which entry to read based on entry length + reading speed
    suggested = @entries.values.find do |x| 
        (x.split(' ').count)/wpm <= time_available
    end
    return suggested
    end

    def todo_list
    return @todo_list
    end

    def complete(action)#string
    #appends COMPLETE to given action on todo list
    completer = @todo_list.index {|x| x == action}
    @todo_list[completer] = action + ' - COMPLETE'
    end

    def contacts
    return @phone_numbers
    end
end




