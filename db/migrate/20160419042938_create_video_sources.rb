class CreateVideoSources < ActiveRecord::Migration[5.0]
  def change
    create_table :video_sources, id: :uuid do |t|
      t.string :source_name
      t.string :source_url
      t.string :source_thumbnail
      t.integer :provider
      t.uuid :video_id
      t.timestamps
    end
    add_index :video_sources, :video_id
  end
end
