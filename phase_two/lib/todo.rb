class Todo
  def initialize(name) # task is a string
  @name = name
  @complete = false
    # ...
  end

  def return_name
    return @name
    # Returns the task as a string
  end

  def mark_done!
    @complete = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    if @complete
      return true
    else
      return false
    end
    # Returns true if the task is done
    # Otherwise, false
  end
end