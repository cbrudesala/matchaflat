class User < ActiveRecord::Base
	has_one :flat

	validates :name, presence: true
	validates :email, presence: true

	has_attached_file :avatar, :styles => { :large => "120x120>", :medium => "48x48>", :thumb => "26x26>" }
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end