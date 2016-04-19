class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :thumbnail, :created_at, :updated_at
end
