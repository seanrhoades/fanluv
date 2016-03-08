class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_artist
  helper_method :current_fan

  def current_fan
    @current_fan ||= Fan.find_by(id: session[:fan_id])
  end

  def current_artist
    @current_artist ||= Artist.find_by(id: session[:artist_id])
  end

  # def require_logged_in
  #   return true if current_fan
  #
  #   redirect_to fans_path
  #   return false
  # end
end
