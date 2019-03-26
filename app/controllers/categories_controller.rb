class CategoriesController < ApplicationController
  before_action :find_category, only: [:show]

  def index
    @categories = Category.all
    @reviews = Review.all
  
  end

  def show
    @reviews = @category.reviews
  end



  private
  def find_category
    @category = Category.find(params[:id])
  end
end
