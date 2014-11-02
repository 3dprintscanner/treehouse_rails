class TodoList < ActiveRecord::Base
  attr_accessible :description, :title
  validates :title, presence: true
  validates :title, length: {minimum: 3}
  validates :description, presence: true
  validates :description, length: {minimum: 3}
end
