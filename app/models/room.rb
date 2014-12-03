class Room < ActiveRecord::Base
	belongs_to :flat

	validates :price, presence: true

	has_attached_file :room_photo, :styles => { :large => "300x300>", :thumb => "100x100>" }
	validates_attachment_content_type :room_photo, :content_type => /\Aimage\/.*\Z/
end
