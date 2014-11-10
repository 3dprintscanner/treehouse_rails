class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  attr_accessible :content

  validates :content, presence: true, length: {minimum: 2}
end
