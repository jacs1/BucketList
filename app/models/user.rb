class User < ActiveRecord::Base
  attr_accessible :email, :name

  has_many :my_todo_items, :class_name => 'TodoItem'

  has_many :likes
  has_many :liked_items, :through => :likes, :class_name => 'TodoItem'
end


# user = User.find(67)
# #MY TodoItems...
# user.my_todo_items

# #The TodoItems that I like form my peer group
# user.liked_items