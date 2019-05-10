class RestaurantsController < ApplicationController
  # before_action :authenticate_restaurant!
  # before_action :authenticate_customer!

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def sign_up
    @restaurant = Restaurant.new
  end
end
