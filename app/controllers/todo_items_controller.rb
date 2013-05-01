class TodoItemsController < ApplicationController

	def index 
		@items = TodoItem.all
		# @destinations = Destination.all

		# o = params[:order] || :created_at 
		# @destinations = Destination.order(o).all 
		# @order = :latitude 
		# @all_items = TodoItem.all 

		# respond_to do |format|
		# 	format.html
		# 	format.js{

		# 	}
	end

	def create
		@item = TodoItem.new(params[:todo_item])
		@item.save!
		render @item

	end

	def show
		@item = TodoItem.find(params[:id])
	end

	def by_title	
	end
	def by_created_at
	end
	def by_latitutde
	end
end

