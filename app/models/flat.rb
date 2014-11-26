class Flat < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true

	validates_inclusion_of :pet, :in => [true, false]
	validates :max_price, presence: true

end
