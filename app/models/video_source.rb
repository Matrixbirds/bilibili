# ## Schema Information
#
# Table name: `video_sources`
#
# ### Columns
#
# Name                    | Type               | Attributes
# ----------------------- | ------------------ | ---------------------------
# **`id`**                | `integer`          | `not null, primary key`
# **`source_name`**       | `string(255)`      |
# **`source_url`**        | `string(255)`      |
# **`source_thumbnail`**  | `string(255)`      |
# **`provider`**          | `integer`          |
# **`video_id`**          | `integer`          | `indexed`
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
