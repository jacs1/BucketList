class TodoItemsController < ApplicationController

	def index 
		@items = TodoItem.all
	end

	# def create
	# 	@todo_item = TodoItem.new(params[:todo_item])
	# end

	def show
		@item = TodoItem.find(params[:id])
	end

	# def destroy
	# 	@todo_item = TodoItem.find(params[:id])
	# 	@todo_item.destroy
	# end
end

