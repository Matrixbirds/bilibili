# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name                   | Type               | Attributes
# ---------------------- | ------------------ | ---------------------------
# **`id`**               | `uuid`             | `not null, primary key`
# **`name`**             | `string`           |
# **`nickname`**         | `string`           |
# **`password_digest`**  | `string`           |
# **`gender`**           | `integer`          |
# **`sign`**             | `text`             |
# **`birthday`**         | `datetime`         |
# **`avatar`**           | `string`           |
# **`uid`**              | `string`           |
# **`created_at`**       | `datetime`         | `not null`
# **`updated_at`**       | `datetime`         | `not null`
#

class User < ApplicationRecord
  include UserOmniauth
  has_secure_password
  enum :gender, [:male, :female, :unknown]
  enum :provider, [:github]
end
