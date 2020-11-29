class CoffeesController < ApplicationController
  include SessionsHelper

  def new
    @coffee = Coffee.new
  end

  def create
    @coffee = current_user.coffees.build(beer_params)
    if @coffee.save
      redirect_to coffee_path(@coffee)
    else
      render :new
    end 
  end
  private

  def find_coffee
    @coffee = Coffee.find_by_id(params[:id])
  end

  def coffee_params
    params.require(:coffee).permit(:title, :roaster, :description, :roast_type)
  end
end
