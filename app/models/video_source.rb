# ## Schema Information
#
# Table name: `video_sources`
#
# ### Columns
#
# Name                    | Type               | Attributes
# ----------------------- | ------------------ | ---------------------------
# **`id`**                | `uuid`             | `not null, primary key`
# **`source_name`**       | `string`           |
# **`source_url`**        | `string`           |
# **`source_thumbnail`**  | `string`           |
# **`provider`**          | `integer`          |
# **`video_id`**          | `uuid`             | `indexed`
# **`created_at`**        | `datetime`         | `not null`
# **`updated_at`**        | `datetime`         | `not null`
#
# ### Indexes
#
# * `index_video_sources_on_video_id`:
#     * **`video_id`**
#

class VideoSource < ApplicationRecord
  belongs_to :video
  enum provider: [:bilibili]
end
