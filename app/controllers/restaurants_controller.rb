# frozen_string_literal: true

# A visitor can see the list of all restaurants.
# Can add new restaurant and be redirect to "show view".
# See the details of a restaurant and the reviews of that restaurant
# Add a new review to a restaurant
class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating, :phone_number, :category)
  end
end
