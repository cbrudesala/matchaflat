class Room < ActiveRecord::Base
	belongs_to :flat

	validates :price, presence: true

	has_attached_file :flat_photo, :styles => { :large => "120x120>", :medium => "48x48>", :thumb => "26x26>" }
	validates_attachment_content_type :flat_photo, :content_type => /\Aimage\/.*\Z/
end
