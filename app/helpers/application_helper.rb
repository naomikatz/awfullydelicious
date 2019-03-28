module ApplicationHelper

  def current_foodie
    # User.find would throw an error if we cannot find the user
    Foodie.find_by({ id: session[:foodie_id] })
  end

  def logged_in?
    # nil is falsey in ruby
    # a user instance is truthy
    !!current_foodie
  end

end
