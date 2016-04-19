module Authenticate
  extend ActiveSupport::Concern

  included do
    helper_method :current_user, :current_user?, :current_user=, :signed_in?
  end

  def current_user
    @current_user
  end

  def current_user=(user)
    session[:user_id] = user.try(:id)
    @current_user = user
  end

  def current_user?(user)
    user == current_user
  end

  alias signed_in? current_user
end
