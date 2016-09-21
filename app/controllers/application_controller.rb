class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login, :except => [:not_authenticated]

  helper_method :current_person

  def not_authenticated
    redirect_to signin_url, :alert => "You need to be logged in to visit that"
  end

  # Make people great again
  def current_person
    current_user
  end
end
