class WelcomeController < ApplicationController

  def index
  end
  
  def about
  end

  
  def contact 
  end

  def ourmission
  end

  def contact
  end





  protect_from_forgery
  skip_before_action :verify_authenticity_token
  
  def home
  end

  def restaurant
    @location = params[:location]
    @price_range = params[:price_range]
  end
end


