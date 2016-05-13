# ## Schema Information
#
# Table name: `videos`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`title`**       | `string(255)`      |
# **`thumbnail`**   | `string(255)`      |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#

class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :thumbnail, :created_at, :updated_at
end
