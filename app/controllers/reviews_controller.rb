class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]

  def index
    @food = Food.find(params[:id])
    @review = @food.reviews

  end

  def show
  end

  def newreview
    @food = Food.find(params[:id])
    @review = Review.new
    @categories = Category.all
    @locations = Location.all
    @foodies = Foodie.all
  end

  def create
    @food = Food.find(params[:id])
    @review = Review.create(review_params)
    @review.image.attach(params[:review][:image])
    redirect_to food_reviews_path(@food)
  end

  def edit
  end

  def update
    @review = Review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  private
  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :content, :rating, :food_id, :foodie_id, :image)
  end
end
