def make_snippet(str)
    words = str.split(' ')
    return words[0..4].join(' ') + '...'
end