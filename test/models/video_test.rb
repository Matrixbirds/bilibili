require 'test_helper'


class VideoTest < ActiveSupport::TestCase

  test 'create video success & check attributes' do
    @video = create :video
    assert @video
    assert ["id", "title", "thumbnail", "created_at", "updated_at"], @video.attributes.keys
  end

end
