class DestinationsController < ApplicationController

	def index
		@destination = Destination.find(params[:id])
	end
end
