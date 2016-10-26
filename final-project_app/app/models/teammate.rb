class Teammate < ApplicationRecord
	has_many :logs
	belongs_to :team
end
