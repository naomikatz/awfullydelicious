class LocationsController < ApplicationController
  before_action :find_location only: :show

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.create(location_params)
    redirect_to locations_path
  end

private

def find_location
  @location = Location.find(params[:id])
end

def location_params
  params.require(:location).permit(:state, :city)
end

end
