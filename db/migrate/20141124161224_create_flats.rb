class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
  		t.integer :num_rooms
  		t.integer :num_baths
  		t.boolean :pet
      t.string :area
      t.text :flat_photo
      t.timestamps
    end
  end
end
