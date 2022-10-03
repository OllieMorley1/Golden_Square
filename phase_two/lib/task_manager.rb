#1. Describe the problem
#As a user
#So that I can keep track of my tasks
#I want a program that I can add todo tasks to and see a list of them.

#As a user
#So that I can focus on tasks to complete
#I want to mark tasks as complete and have them disappear from the list.

#2. Design the Class Interface
class TaskManager
    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
    end

    def complete(task)
        @tasks.delete(task)
    end

    def list
        return @tasks
    end
end


##3. Create examples as tests
    #1
#TM = TaskManager.new
#TM.add('task')
#TM.list #=> ['task']
    #2
#TM = TaskManager.new
#TM.add('task1')
#TM.add('task2') 
#TM.list #=> ['task1, task2']
    #3
#TM = TaskManager.new
#TM.add('task1')
#TM.add('task2')
#TM.complete('task2') 
#TM.list #=> ['task1']



#4.Implement behaviour
