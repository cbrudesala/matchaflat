class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
			t.integer :price
	    t.text :room_photo
      t.timestamps
    end
  end
end
