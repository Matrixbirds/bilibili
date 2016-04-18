class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :nickname
      t.string :password_digest
      t.integer :gender
      t.text :sign
      t.datetime :birthday
      t.string :avatar
      t.string :uid
      t.integer :provider
      t.timestamps
    end
  end
end
