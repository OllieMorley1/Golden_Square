require 'task_manager'

RSpec.describe TaskManager do
    it 'adds tasks to list' do
        test = TaskManager.new
        test.add('task1')
        expect(test.list).to eq ['task1']
    end

    it 'can add multiple tasks to list' do 
        test = TaskManager.new
        test.add('task1')
        test.add('task2')
        expect(test.list).to eq ['task1', 'task2']
    end

    it 'can complete(remove) tasks from the list' do
        test = TaskManager.new
        test.add('task1')
        test.add('task2')
        test.complete('task2')
        expect(test.list).to eq ['task1']
    end
end