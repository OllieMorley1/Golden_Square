#As a user
#So that I can keep track of my music listening
#I want to add tracks I've listened to and see a list of them.

#Design the classinterface
class TrackList
    def initialize
        @tracks = []
    end

    def add(track)
        @tracks << track
    end

    def list
        if @tracks.empty? then return 'No tracks added'
        else return @tracks
        end
    end
end

#Examples
#Test for an empty list
#test = TrackList.new
#test.list #=> []

#Creates new elements for array
#test = TrackList.new
#test.add('Dancing Queen - ABBA')
#test.add('Man in the mirror - Michael Jackson')
#test.list #=> ['Dancing Queen - ABBA, Man in the mirror - Michael Jackson']