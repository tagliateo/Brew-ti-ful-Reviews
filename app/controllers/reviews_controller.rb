class ReviewsController < ApplicationController
  include SessionsHelper

  before_action :find_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @treat.save

    redirect_to reviews_path
  end

  def show
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  private

  def find_review
    @review = Review.find_by_id(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :rating, :description, :coffee_id)
  end

end
