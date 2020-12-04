class CoffeesController < ApplicationController
  include SessionsHelper

  before_action :find_coffee, only: [:show, :edit, :update]

  def new
    @coffee = Coffee.new
  end

  def create
    # byebug
    @coffee = Coffee.new(coffee_params)
    if @coffee.save

      redirect_to coffee_path(@coffee)
    else
      render :new
    end
  end

  def index
    if @review = Review.find_by_id(params[:review_id])
      @
    elsif true
      # code
    else
      @coffees = Coffee.all
    end
  end

  def show
  end

  def edit
  end

  def update
    @coffee.update(coffee_params)
    redirect_to coffee_path(@coffee)
  end

  private

  def find_coffee
    @coffee = Coffee.find_by_id(params[:id])
  end

  def coffee_params
    params.require(:coffee).permit(:title, :brand, :description, :roast_level, :caffeine_content)
  end
end
