class Cage < ApplicationRecord
	belongs_to :stack
	has_many :rabbits
end
