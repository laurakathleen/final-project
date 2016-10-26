class TeammatesController < ApplicationController

	def show
		teammate_id = params[:teammate_id]
		@teammate = Teammate.find_by_id(teammate_id)
	end
end
