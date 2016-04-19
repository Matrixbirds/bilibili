require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  setup do
    @videos = create_list :video, 3
  end

  test 'should access success for anyone' do
    get :index
    assert_response :success
  end
end
