class CommentsController < ApplicationController

	def index 
		@comments = Comment.all
	end
	


	def create
		@comment = Comment.new(params[:comment])
		@comment.save!
		render :partial => 'comments/comment', :locals => { :comment => @comment }, :content_type => 'text/html'	
	end
end

# respond_to do |format|
# 	format.html do
# 		render @comment
# 	end

# 	format.js do
# 		render :template => 'comments/create', :locals => { :comment => @comment }, :content_type => 'text/javascript'
# 	end
# 	format json do 
# 		render :json => @comment
# 	end
# end