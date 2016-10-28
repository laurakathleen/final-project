module SessionsHelper

	def login(teammate)
		session[:teammate_id] = teammate.id
		@current_teammate = teammate
	end

	def current_teammate
		@current_teammate ||=Teammate.find_by_id(session[:teammate_id])
	end

	def logout
		@current_teammate = session[:teammate_id] = nil
	end

	def setTeamId(team_id)
		@@team_id = team_id
	end

	def getTeamId
		@@team_id
	end

	def setTeammateId(teammate_id)
		@@teammate_id = teammate_id
	end

	def getTeammateId
    @@teammate_id
  end

end
