class Destination < ActiveRecord::Base
  attr_accessible :name, :image_url, :latitude, :longitude
  has_many :todo_items

  geocoded_by :geolocate
  after_validation :geocode

  def geolocate
  	"#{self.name}"
  end
end