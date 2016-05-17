class RestaurantController < ApplicationController
   protect_from_forgery
   skip_before_action :verify_authenticity_token

Yelp.client.search('Dallas', { term: 'food' })
   		params = { term: 'food',
           limit: 5,
           category_filter: 'restaurants'
         }

locale = { lang: 'en' }

Yelp.client.search('Dallas', params, locale)
   def home
      Yelp.client.search('Dallas', { term: 'food' })
      @restaurants = Restaurant.all
   end
   
   def show
      @location = params[:location]
   end
end
 