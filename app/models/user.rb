# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name                   | Type               | Attributes
# ---------------------- | ------------------ | ---------------------------
# **`id`**               | `integer`          | `not null, primary key`
# **`name`**             | `string(255)`      |
# **`nickname`**         | `string(255)`      |
# **`email`**            | `string(255)`      |
# **`password_digest`**  | `string(255)`      |
# **`gender`**           | `integer`          |
# **`sign`**             | `text(65535)`      |
# **`birthday`**         | `datetime`         |
# **`avatar`**           | `string(255)`      |
# **`uid`**              | `string(255)`      |
# **`provider`**         | `integer`          |
# **`created_at`**       | `datetime`         | `not null`
# **`updated_at`**       | `datetime`         | `not null`
#

class User < ApplicationRecord
  include UserOmniauth
  has_secure_password
  enum gender: [:male, :female, :unknown]
  enum provider: [:github]
end
