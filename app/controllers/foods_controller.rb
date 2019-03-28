class FoodsController < ApplicationController
  before_action :find_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.search(params[:search])
    @reviews = Review.all
  end

  def new
    @food = Food.new
    @locations = Location.all
    @categories = Category.all
  end

  def create
    @food = Food.create(food_params)
    @food.image.attach(params[:food][:image])
    # @review = Review.create(title: "I need a title", content: "I need content", rating: 0, food_id: @food.id, foodie_id: 1).image.attach(io: File.open('/Users/naomikatz/Desktop/donut.jpeg'), filename: 'donut.jpeg')
    redirect_to new_food_review_path(@food)
  end

  def show

  end

  def edit
    @locations = Location.all
    @categories = Category.all
  end

  def update
    @food.update(food_params)
    redirect_to food_path(@food)
  end


  def destroy
    @food.destroy

  end

  private
  def find_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:name, :spot_name, :address, :location_id, :category_id, :like_count, :search, :image)
  end
end
