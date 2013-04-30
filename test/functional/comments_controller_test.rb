require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
	context "A comment" do 
		context "POST to /comments" do 
			setup do
				@todo_item = TodoItem.create
				post :create, :comment => { :body => "Blah", :todo_item_id => @todo_item.id }
	end

	should "increase the comment count" do 
		assert_equal 1, Comment.count
	end
	
	 should "have an associated todo item" do
	 	assert_equal assigns(:comment).todo_item, @todo_item
	 end

	 should "give a HTTP 200" do 
	 	assert_response :success
	 end
	 context "A AJAX request to create" do 
	 	setup do 
	 		xhr :post, :create, :comment => { :body => "blah"}
	 	end
	 	should "respond with JS" do 
	 		assert_response :success
	 		assert_equal response.content_type, 'text/javascript'
	 		assert_not_nil assigns(:comment)
	 	end
   end
  end
end
#get models and controllers set up
#get post action in model route controller