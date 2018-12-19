class ApplicationController < ActionController::Base
  include SessionsHelper

  protected

  def authenticate_user!
    redirect_to new_session_path unless logged_in?
  end

end
