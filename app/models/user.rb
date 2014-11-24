class User < ActiveRecord::Base
	# has_many :matches
	# has_many :availability_dates
	# has_and_belongs_to many :areas

	validates :name, presence: true
	validates :email, presence: true
	validates :photo,
	validates :num_rooms, presence: true
	validates :num_baths, presence: true
	validates :pet, presence: true
	validates :price, presence: true

end
