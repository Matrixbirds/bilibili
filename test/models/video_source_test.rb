require 'test_helper'

class VideoSourceTest < ActiveSupport::TestCase

  test 'should create videosource success & check its attributes' do
    @video_source = create :video_source
    assert @video_source
    assert_equal ["id", "source_name",
                  "source_url", "source_thumbnail",
                  "provider", "video_id",
                  "created_at", "updated_at"],
                 @video_source.attributes.keys
  end
end
