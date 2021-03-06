class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude, :destination_id

  # validates :location, :presence => true

  # geocoded_by :location 
  # after_validation :geocode
  # makes sure the location is there first, and if everything is there then saves

  has_many :comments
  has_many :likes
  belongs_to :destination
  belongs_to :user
#   def my_cool_geocoding_method
#   	"#{self.location}#{destination.name}"
#   end
end
