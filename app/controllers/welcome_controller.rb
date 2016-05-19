class WelcomeController < ApplicationController
  protect_from_forgery
  skip_before_action :verify_authenticity_token
  
  def home
  end

  def restaurant
    @location = params[:location]
    @price_range = food_type[:food_type]
  end
end

