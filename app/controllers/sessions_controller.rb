class SessionsController < ApplicationController
  def create
    if request.env['omniauth.auth'].present?
      self.current_user ||= User.from_omniauth(omniauth)
    else
      self.current_user ||= begin
        user = User.find_by(name: params[:user][:name])
        user.authenticate(params[:user][:password])
      end
    end
    redirect_to root_path
  end

  def destroy
  end

  private

  def omniauth
    OmniauthGithub.new(request.env['omniauth.auth'].as_json)
  end

  def user_params
    params.require(:user).permit(:name, :password)
  end
end
