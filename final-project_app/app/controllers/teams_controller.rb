class TeamsController < ApplicationController

	def show
		team_id = params[:team_id]
		@team = Team.find_by_id(team_id)
	end
end
