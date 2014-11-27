class Room < ActiveRecord::Base
	belongs_to :flat

	validates :num_rooms, presence: true
	validates :num_baths, presence: true
	validates_inclusion_of :pet, :in => [true, false]
end
