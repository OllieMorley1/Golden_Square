require 'todo_list'
require 'todo'

RSpec.describe 'integration' do 
    context 'adding entries' do 
        it 'returns an empty array' do
            todo = Todo.new("Clean")
            todo_list = TodoList.new
            todo_list.add(todo)
            result = todo_list.complete
            expect(result).to eq []
        end

        it 'returns an empty array' do
            todo_list = TodoList.new
            todo = Todo.new("Clean")
            todo_list.add(todo)
            result = todo_list.incomplete
            expect(result).to eq ["Clean"]
        end
    end
end