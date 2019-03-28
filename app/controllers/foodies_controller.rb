class FoodiesController < ApplicationController

  def show
      @foodie = Foodie.find(params[:id])
    end

    def new
      @foodie = Foodie.new
    end

    def create
      @foodie = Foodie.create(foodie_params)
      if @foodie.valid?
        session[:foodie_id] = @foodie.id
        redirect_to foods_path
      else
        flash[:errors] = @foodie.errors.full_messages
        redirect_to new_foodie_path
      end
    end

    def destroy
      @foodie = Foodie.find(params[:id])
      @foodie.destroy
      flash[:notice] = 'You deleted your account :('
      redirect_to new_foodie_path
    end


      private

      def foodie_params
        params.require(:foodie).permit(:username, :password)
      end


end
