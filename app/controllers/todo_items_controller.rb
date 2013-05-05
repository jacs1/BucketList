class TodoItemsController < ApplicationController

	def index 
		@items = TodoItem.all

	end

	def create
		@item = TodoItem.new(params[:todo_item])
		@item.save!
		render :template => 'todo_items/create', :locals=> { :todo_item => @todo_item }, :content_type => 'text/javascript'

	end

	def show
		@item = TodoItem.find(params[:id])
	end

	def like
    todo_item = TodoItem.find(params[:id])
	Like.create(:todo_item_id => :todo_item.id, :user_id => session[:user_id])
	render :nothing => true
 	end

	def by_title	
	end
	def by_created_at
	end
	def by_latitutde
	end
end

