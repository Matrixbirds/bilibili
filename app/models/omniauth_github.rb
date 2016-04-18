class OmniauthGithub
  attr_accessor :provider, :uid, :name, :uid, :nickname, :image, :email
  def initialize(args)
    self.provider = args['provider']
    self.uid = args['uid']
    self.name = args['info']['name']
    self.nickname = args['info']['nickname']
    self.image = args['info']['image']
    self.email = args['info']['email']
  end

  def attributes
    {
      provider: self.provider,
      uid: self.uid,
      name: self.name,
      nickname: self.nickname,
      avatar: self.image,
      email: self.email
    }
  end
end
