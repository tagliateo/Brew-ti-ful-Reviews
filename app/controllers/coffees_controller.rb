class CoffeesController < ApplicationController
  include SessionsHelper

  before_action :find_coffee, only: [:show, :edit, :update]

  def index
    @coffees = Coffee.sorted_coffees
    # @coffees = Coffees.all
  end

  def new
    if logged_in?
      @coffee = Coffee.new
    else
      redirect_to root_path
    end
  end

  def create
    # byebug
    @coffee = current_user.coffees.build(coffee_params)
    if @coffee.save

      redirect_to coffees_path(@coffee)
    else
      render :new
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
    params.require(:coffee).permit(:title, :brand, :description, :roast_level, :caffeine_content, :user_id)
  end
end
