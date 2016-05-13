class InitSchema < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.string :email
      t.string :password_digest
      t.integer :gender
      t.text :sign
      t.datetime :birthday
      t.string :avatar
      t.string :uid
      t.integer :provider
      t.timestamps
    end

    create_table :video_sources do |t|
      t.string :source_name
      t.string :source_url
      t.string :source_thumbnail
      t.integer :provider
      t.integer :video_id, index: true
      t.timestamps
    end

    create_table :videos do |t|
      t.string :title
      t.string :thumbnail
      t.timestamps
    end
  end
end
