class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :email
    	t.string :photo
    	t.integer :num_rooms
    	t.integer :num_baths
    	t.boolean :pet
      t.integer :min_price
    	t.integer :max_price
      t.timestamps
    end
  end
end