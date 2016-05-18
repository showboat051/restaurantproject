class RestaurantController < ApplicationController
   protect_from_forgery
   skip_before_action :verify_authenticity_token

   def home
   end
   
   def show
      @location = params[:location]
      options = { 
         term: 'food',
         limit: 5,
         category_filter: 'restaurants'
      }
      response = Yelp.client.search(@location,  options)
   	

   end
end