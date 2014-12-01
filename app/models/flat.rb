class Flat < ActiveRecord::Base
	attr_accessor :flat_photo_file_name

	has_many :room
	belongs_to :user

	validates :user_id, uniqueness: true
	validates :num_rooms, presence: true
	validates :num_baths, presence: true
	validates :address, presence: true
	validates_inclusion_of :pet, :in => [true, false]
	validates_presence_of :user

	has_attached_file :flat_photo, :styles => { :large => "120x120>", :medium => "48x48>", :thumb => "26x26>" }
	validates_attachment_content_type :flat_photo, :content_type => /\Aimage\/.*\Z/
end