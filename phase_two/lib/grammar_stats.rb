class GrammarStats
    def initialize
      @checks = []
    end
  
    def check(text) # text is a string
      result = text[0] == text[0].upcase && text[-1] == '.'
      @checks << result
      return result
    end
  
    def percentage_good
    pass = @checks.count(true)
    return (pass.to_f / @checks.length) * 100
    end
  end