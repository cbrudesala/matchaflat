class Flat < ActiveRecord::Base
	has_many :room
	belongs_to :user

	validates :num_rooms, presence: true
	validates :num_baths, presence: true
	validates :address, presence: true
	validates_inclusion_of :pet, :in => [true, false]
end