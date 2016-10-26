class Teammate < ApplicationRecord
	has_secure_password
	has_many :logs
	belongs_to :team
end
