class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  helper_method :current_user

  private
  def current_user
    return nil if session[:session_token].nil?
    @current_user = User.find_by_session_token(session[:session_token])
  end

  def login!(user)

  end

  def logged_in?

  end
end
