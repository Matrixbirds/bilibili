module UserOmniauth
  extend ActiveSupport::Concern

  module ClassMethods
    def from_omniauth(omniauth)
      if @user = User.find_or_initialize_by(name: omniauth[:name], uid: omniauth[:uid], provider: omniauth[:provider])
        @user.update omniauth
        @user.save
      end
      @user
    end
  end
end
