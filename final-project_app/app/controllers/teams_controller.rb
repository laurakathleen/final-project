class TeamsController < ApplicationController

	def show
		team_id = params[:team_id]
		@team = Team.find_by_id(team_id)
		@teammate = session[:teammate_id]
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)
		@team.save
		redirect_to @team
	end

	private

	def team_params
		params.require(:team).permit(:name, :branch, :months, :start_location, :end_location)
	end
end
