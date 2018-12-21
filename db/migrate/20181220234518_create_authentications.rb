class CreateAuthentications < ActiveRecord::Migration[5.2]
  def change
    create_table :authentications do |t|
      t.integer :user_id
      t.string :user_name
      t.string :password_digest

      t.timestamps
    end
  end
end
