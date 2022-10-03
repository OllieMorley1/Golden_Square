#As a user
#So that I can manage my time
#I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

def reading_time(str)
#create reading time constant
s_per_w = 60.0/200.0
#count words in str
words = str.split(' ')
length = words.length
#return expected reading time for str
return length * s_per_w
end
