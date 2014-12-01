class Addindextoflat < ActiveRecord::Migration
  def change
  	add_index :flats, :user_id
  end
end
