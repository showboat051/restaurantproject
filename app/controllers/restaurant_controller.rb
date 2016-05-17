class RestaurantController < ApplicationController
   protect_from_forgery
   skip_before_action :verify_authenticity_token
   def home
      Yelp.client.search('Dallas', { term: 'food' })
      @restaurants = Restaurant.all
   end
   
   def show
      @location = params[:location]
   end
end
 