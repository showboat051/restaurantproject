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
      @image_url = @restaurant.image_url.sub("ms.jpg", "l.jpg")
      @image = response.businesses[0].rating_img_url
      @url = response.businesses[0].url
      @address = response.businesses[0].location.display_address
      @latitude = response.businesses[0].location.coordinate.latitude
      @longitude = response.businesses[0].location.coordinate.longitude
   end
end