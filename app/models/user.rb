class User < ActiveRecord::Base
	# has_many :matches
	# has_many :availability_dates
	# has_and_belongs_to many :areas

	validates :name, presence: true
	validates :email, presence: true
	validates :num_rooms, presence: true
	validates :num_baths, presence: true
	validates_inclusion_of :pet, :in => [true, false]
	validates :max_price, presence: true


end
