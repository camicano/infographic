class YearsController < ApplicationController
	
	respond_to :json
	
	def index
		@year = Year.first
		respond_with(@year) 
	end

	def show
		@year = Year.find_by year: params[:year]
		respond_with(@year)
	end

	def all
		@years = Year.order_by([:year, :asc])
		respond_with(@years)
	end
end
