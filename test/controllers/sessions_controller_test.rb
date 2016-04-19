require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

  setup do
    @omniauth = OmniAuth.config.mock_auth[:github] = {
      "provider"=>"github",
      "uid"=>"9990676",
      "info"=>
      {
        "nickname"=>"craft",
        "email"=>"yooobuntu@163.com",
        "name"=>"matrixbirds",
        "image"=>"https://avatars.githubusercontent.com/u/9990676?v=3",
        "urls"=>
        {
          "GitHub"=>"https://github.com/Matrixbirds",
          "Blog"=>"http://www.baozou.com"
        }
      }
    }
  end

  test 'should create user success by omniauth' do
    request.env['omniauth.auth'] = @omniauth
    assert_difference('User.count') do
      get :create
    end
  end

  test 'should login success with exists user from omniauth' do
    request.env['omniauth.auth'] = @omniauth
    @user = create(:user, name: @omniauth["info"]["name"],
                  nickname: Faker::Name.name,
                  provider: @omniauth["provider"],
                  uid: @omniauth["uid"])
    assert_no_difference('User.count') do
      get :create
    end
    assert_equal User.last.nickname, @omniauth["info"]["nickname"]
  end

  test 'should login success with exists user from register' do
    @user = create(:user, name: @omniauth["info"]["name"],
                  nickname: Faker::Name.name,
                  provider: @omniauth["provider"],
                  uid: @omniauth["uid"],
                  password: '10241024',
                  password_confirmation: '10241024')
    post :create, user: { name: @user.name, password: @user.password }
  end
end
