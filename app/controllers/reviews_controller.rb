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
    @review = current_user.reviews.build(review_params)
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
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
    redirect_to reviews_path if !@review
  end

  def review_params
    params.require(:review).permit(:title, :rating, :description, :coffee_id)
  end

  def redirect_if_not_logged_in
    redirect_to new_session_path if !current_user
  end

end
