module Helpers
  def log_in_as(user)
    request.session[:user_id] = user.id
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
