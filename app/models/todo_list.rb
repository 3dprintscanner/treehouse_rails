class TodoList < ActiveRecord::Base
  attr_accessible :description, :title
  validates :title, presence: true
  validates :title, length: {minimum: 3}
end
