class CustomerMealsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @customer_meals = current_customer.customer_meals_in_cart.where(is_removed: false, is_purchased: false)
  end

  def create
    if params[:amount]
      amount = 1
    else
      amount = params[:amount]
    end
    @customer_meal = CustomerMeal.new( amount: amount, meal_id: params[:meal_id], customer_id: current_customer.id, is_purchased: false, is_removed: false )
    if @customer_meal.save
      flash[:success] = "Item Added"
      redirect_back fallback_location: "/restaurants/#{params[:restaurant_id]}"
    else
      flash[:warning] = "Enter More"
      redirect_to "/restaurants/#{params[:restaurant_id]}"
    end
  end

  def destroy
    customer_meal_in_cart = CustomerMeal.find(params[:id])
    customer_meal_in_cart.update(is_removed: true)
    flash[:success] = "Product removed from cart"
    redirect_to "/cart"
  end
end
