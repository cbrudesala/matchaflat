class Addindextoroom < ActiveRecord::Migration
	def change
		add_index :rooms, :flat_id
	end
end
