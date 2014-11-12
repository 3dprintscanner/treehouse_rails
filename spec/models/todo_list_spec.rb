require 'spec_helper'

describe TodoList do
  it {should have_many(:todo_items)}

  describe "#has completed items?" do

  	let!(:todo_list) {todo_list = TodoList.create(title: "Groceries", description: "Grocery List")}


  	it "returns true with completed todo list items" do
  		todo_list.todo_items.create(content: "Eggs", completed_at: 1.minute.ago)
  		expect(todo_list.has_completed_items?).to be_true
  	end

  	it "returns false when no completed items" do
  		todo_list.todo_items.create(content: "Eggs")
  		expect(todo_list.has_completed_items?).to be_false
  	end
  end

  describe "#has incomplete items?" do
  	let!(:todo_list) {todo_list = TodoList.create(title: "Groceries", description: "Grocery List")}


  	it "returns false when no incomplete todo list items" do
  		todo_list.todo_items.create(content: "Eggs", completed_at: 1.minute.ago)
  		expect(todo_list.has_incomplete_items?).to be_false
  	end

  	it "returns true when has incomplete items" do
  		todo_list.todo_items.create(content: "Eggs")
  		expect(todo_list.has_incomplete_items?).to be_true
  	end
  end

end
