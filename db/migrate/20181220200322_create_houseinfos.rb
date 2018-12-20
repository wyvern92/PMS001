class CreateHouseinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :houseinfos do |t|
      t.integer :house_id
      t.string :house_addrs
      t.string :house_description
      t.decimal :house_price, precision: 8, scale:4
      t.integer :house_guest

      t.timestamps
    end
  end
end
