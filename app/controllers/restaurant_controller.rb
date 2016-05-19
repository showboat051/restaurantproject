class RestaurantController < ApplicationController
   protect_from_forgery
   skip_before_action :verify_authenticity_token

   def home
   end
   
   def show
      @location = params[:location]
      @food_type = params[:food_type]
      options = { 
         term: @food_type,
         limit: 5,
         category_filter: 'restaurants'
      }
      response = Yelp.client.search(@location, options)
   
      @restaurant = response.businesses[0]
       @rating = response.businesses[0].rating
       @image = response.businesses[0].rating_img_url
   end
end

