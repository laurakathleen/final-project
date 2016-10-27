class SessionsController < ApplicationController

	def new
		@teammate = Teammate.new
	end

	def create
		teammate_params = params.require(:teammate).permit(:first_name, :last_name, :username, :password, :team_id)
		@teammate = Teammate.confirm(teammate_params)
		if @teammate
			login(@teammate)
			redirect_to @teammate
		else
			redirect_to login_path
		end
	end

	def destroy
		logout
		redirect_to root_path
	end

end
