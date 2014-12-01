class AddFlatIdToRoom < ActiveRecord::Migration
  def change
  	add_column :rooms, :flat_id, :integer
  end
end
