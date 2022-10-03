#As a user
#So that I can improve my grammar
#I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

def grammar_check(str)
    #checks first character is capital letter
str[0] == str[0].upcase
    #checks last character is full stop
str[-1] == '.'
end
