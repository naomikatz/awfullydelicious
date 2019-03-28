class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]

  def index
    @food = Food.find(params[:id])
    @review = @food.reviews

  end

  def show
    @food = @review.food
  end

  def new
    @food = Food.find(params[:id])
    @review = Review.new
    @categories = Category.all
    @locations = Location.all
    @foodies = Foodie.all
  end

  def create
    @food = Food.find(params[:id])
    redirect_to food_path(@food)
  end

  def edit
    @food = @review.food
    @foodies = Foodie.all
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy

    @review.destroy
    redirect_to foods_path
  end

  private
  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating, :food_id, :foodie_id)
  end
end
