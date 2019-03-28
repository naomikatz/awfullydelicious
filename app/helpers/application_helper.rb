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

  def alert_for(flash_type)
  { success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
  }[flash_type.to_sym] || flash_type.to_s
end

end
