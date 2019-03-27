class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]

  def new
    render :new #looks in app/views/sessions/new.html.erb
  end


  def create #handles the POST request to /login
    # find out if we have a user with this username

    @foodie = Foodie.find_by(username: params[:username])

    # get that user record from DB
    # authenticate this user; determine if they provided the correct pw

    if @foodie && @foodie.authenticate(params[:password])
      # once we have found the user, create a new session for them
      session[:foodie_id] = @foodie.id
      # redirect_to user_path(@user)
      redirect_to foods_path

    else
      flash[:notice] = 'Invalid username or password'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:foodie_id)
    # session[:user_id] = nil
    flash[:notice] = 'You have logged out'
    redirect_to login_path
  end

end
