class CategoriesController < ApplicationController
  before_action :find_category, only: [:show]


  def index
    @categories = Category.all
    @reviews = Review.all

  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    redirect_to categories_path
  end

  def show
    @foods = @category.foods
  end



  private
  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
