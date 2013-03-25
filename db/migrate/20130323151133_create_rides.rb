class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :ridename
      t.string :leader
      t.integer :length
      t.string :difficulty
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.references :user

      t.timestamps
    end
    add_index :rides, :user_id
  end
end
