class Block < ApplicationRecord
	belongs_to :barn
	has_many :stacks
end
