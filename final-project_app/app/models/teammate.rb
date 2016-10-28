class Teammate < ApplicationRecord
	has_many :logs
	belongs_to :team
	validates :username, uniqueness: true
	def self.confirm(params)
		@teammate = Teammate.find_by({username: params[:username]})
		
	end
end


