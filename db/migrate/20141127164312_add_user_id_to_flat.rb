class AddUserIdToFlat < ActiveRecord::Migration
  def change
  	add_column :flats, :user_id, :integer
  end
end
