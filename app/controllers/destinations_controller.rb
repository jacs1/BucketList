class DestinationsController < ApplicationController

	def index
		@destinations = Destination.all
	end

	def show
		@destination = Destination.find(params[:id])
	end

	def create
		@destination = Destination.new(params[:name])
		@destination.save!
	end


		# render :partial => 'destinations/form', :locals => { :destination => @destination }, :content_type => 'text/html'

end

# def index 
# 	items = TodoItem.near([params[:latitude], params[:longitude]])
# 	@destinations = items.map { |i| i.destination }.uniq
# end