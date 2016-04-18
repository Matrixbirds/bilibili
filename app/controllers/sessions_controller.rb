class SessionsController < ApplicationController
  def create
    self.current_user ||= User.from_omniauth(omniauth)
    redirect_to root_path
  end

  def destroy
  end

  private

  def omniauth
    OmniauthGithub.new(request.env['omniauth.auth'].as_json)
  end

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
