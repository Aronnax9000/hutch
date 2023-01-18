class Stack < ApplicationRecord
	belongs_to :block
	has_many :cages
end
