# ## Schema Information
#
# Table name: `videos`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `uuid`             | `not null, primary key`
# **`title`**       | `string`           |
# **`thumbnail`**   | `string`           |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class Video < ApplicationRecord
  has_many :video_sources
end
