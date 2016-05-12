class CityController < ApplicationController
	def index
		@city = City.all
	end
end




