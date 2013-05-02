class Destination < ActiveRecord::Base
  attr_accessible :name, :image_url
  has_many :todo_items
end
