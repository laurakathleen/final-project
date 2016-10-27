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

	def getTeammateId
    @@teammate_id
  end
end
