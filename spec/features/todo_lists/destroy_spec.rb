require 'spec_helper'

describe "Deleting todo lists" do
	let!(:todo_list) {TodoList.create(title: "Groceries", description: "Grocery List")}

	it "is successful when clicking the destroy link" do
		visit "/todo_lists"

		within "#todo_list_#{todo.list.id}" do
			click_link "Destroy"
		end
		expect(page).to_not have_content(todo_list.title)
		expect(Todolist.count).to eq(0)
	end
end