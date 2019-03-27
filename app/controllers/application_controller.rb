class ApplicationController < ActionController::Base

  before_action :authorized #lock down this whole app
  helper_method :current_foodie #i can call current_user from a view

  def current_foodie
    # User.find would throw an error if we cannot find the user
    Foodie.find_by({ id: session[:foodie_id] })
  end

  def logged_in?
    # nil is falsey in ruby
    # a user instance is truthy
    !!current_foodie
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

end
