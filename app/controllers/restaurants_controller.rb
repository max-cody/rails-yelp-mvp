# frozen_string_literal: true

class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant successfully created.'
    else
      render :new
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end

# def category
#   @restaurant = restaurant.find(params[:id])
#   @category = @restaurant.category
#   @phone_number = @restaurant.phone_number
# end
