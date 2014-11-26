class User < ActiveRecord::Base
	has_one :flat

	validates :name, presence: true
	validates :email, presence: true
end