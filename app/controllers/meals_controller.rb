class MealsController < ApplicationController
  # before_action :authenticate_restaurant!
  # before_action :authenticate_customer!
  
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.create(
                        name: params[:name],
                        description: params[:description],
                        price: params[:price])

    redirect_to("/meals/#{meal.id}")
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    meal.update(
                name: params[:name],
                description: params[:description],
                price: params[:price])
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    flash[:success] = "Meal was removed"
    redirect_to "/meals"
  end

end
