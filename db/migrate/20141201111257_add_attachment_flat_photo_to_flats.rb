class AddAttachmentFlatPhotoToFlats < ActiveRecord::Migration
  def self.up
    change_table :flats do |t|
      t.attachment :flat_photo
    end
  end

  def self.down
    remove_attachment :flats, :flat_photo
  end
end
