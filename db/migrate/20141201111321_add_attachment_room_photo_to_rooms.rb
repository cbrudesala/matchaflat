class AddAttachmentRoomPhotoToRooms < ActiveRecord::Migration
  def self.up
    change_table :rooms do |t|
      t.attachment :room_photo
    end
  end

  def self.down
    remove_attachment :rooms, :room_photo
  end
end
