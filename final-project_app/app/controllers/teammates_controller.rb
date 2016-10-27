class TeammatesController < ApplicationController

	def new
		@teammate = Teammate.new
	end

	def create
		@teammate = Teammate.create(teammate_params)
		if @teammate.save
			redirect_to teammate_path(@teammate)
		end 
	end

	def show
		teammate_id = params[:teammate_id]
		@teammate = Teammate.find_by_id(teammate_id)
	end

	private

	def teammate_params
		params.require(:teammate).permit(:first_name, :last_name, :username, :password, :team_id)
	end
end
  