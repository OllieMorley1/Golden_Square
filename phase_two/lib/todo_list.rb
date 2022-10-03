class TodoList
  def initialize
    @list = {}
  end

  def add(todo) # todo is an instance of Todo
  @list[todo] = false
    # Returns nothing
  end

  def incomplete
     hash = @list.select {|key, value| @list[key] == false}
     puts hash
     return hash.keys.map {|key| key.return_name()}

  end

  def complete
    # Returns all complete todos
    hash = @list.select {|key, value| @list[key] == true}
    return hash.keys
  end

  def give_up!
    # Marks all todos as complete
    @list.each {|key, value| @list[key] = true}
  end
end




