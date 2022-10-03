#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO.

def to_do(str)
    #checks if given string contains #TODO
str.include?('#TODO')
    #returns true/false
end