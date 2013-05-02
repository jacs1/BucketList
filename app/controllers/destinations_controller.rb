class DestinationsController < ApplicationController

	def index
		@destinations = Destination.all
	end

	def show
		@destination = Destination.find(params[:id])
	end

	def create
		binding.pry

		@destination = Destination.new(params[:destination])
		# @destination.name = Destination.new(params[:destination][:name])
		# @destination.image_url = Destination.new(params[:destination][:image_url])
		@destination.save!
		binding.pry
		render :template => 'destinations/create', locals => { :desination => @destination }, :content_type => 'text/javascript'
	end


		# render :partial => 'destinations/form', :locals => { :destination => @destination }, :content_type => 'text/html'

end

# def index 
# 	items = TodoItem.near([params[:latitude], params[:longitude]])
# 	@destinations = items.map { |i| i.destination }.uniq
# end