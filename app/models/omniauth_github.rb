class OmniauthGithub
  include ActiveModel::Model
  attr_accessor :provider, :uid, :name, :uid, :nickname, :image, :email
  def initializers(**args)
    self.provider = args['provider']
    self.uid = args['uid']
    self.name = args['info']['name']
    self.nickname = args['info']['name']
    self.image = args['info']['image']
    self.email = args['info']['email']
  end
end
