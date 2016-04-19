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

class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :thumbnail, :created_at, :updated_at
end
