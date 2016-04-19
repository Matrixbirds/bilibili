class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos, id: :uuid do |t|
      t.string :title
      t.string :thumbnail
      t.timestamps
    end
  end
end
