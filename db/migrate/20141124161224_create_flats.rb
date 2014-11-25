class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
  		t.string :name
  		t.string :email
  		t.string :photo
  		t.integer :num_rooms
  		t.integer :num_baths
  		t.boolean :pet
  		t.integer :price
      t.timestamps
    end
  end
end
