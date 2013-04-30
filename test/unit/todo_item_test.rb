require 'test_helper'

class TodoItemTest < ActiveSupport::TestCase

	context "a todo item" do 
		setup do 
			@todo_item - TodoItem.create(:name => "Drink Picklebacks", :location => "618 Grand St.")
end

	should "put values int eh latitutde and longitude" do 
		assert_not_nil @todo_item.latitutde
		assert_not_nil @todo_item.longitude
	end


	should "use a better input for geocoding" do 
		assert_equal "618 Grand St. New York", @todo_item.my_cool_geocoding_method
	end
  end

end

