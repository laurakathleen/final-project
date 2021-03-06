class LogsController < ApplicationController

	def index
		@log = Log.all
	end

	def new
		@teammate_id = params[:teammate_id]
		@log = Log.new
	end

	def create
		@teammate = Teammate.find_by_id(params[:id])
		@log = Log.new(log_params)
		@log.teammate_id = @log.id
		if @log.save
			redirect_to teammate_path
		else
			redirect_to team_path
		end
	end

	def show
		@log = Log.find_by_id(params[:log_id])
		teammates_id = params[:teammate_id]
		@teammate = Teammate.find_by_id(:teammate_id)
	end

	def edit
		@log = Log.find(params[:log_id])
	end

	def update
		@log = Log.find(params[:log_id])
		if @log.update(log_params)
			redirect_to teammate_path(@teammate)
		end
	end

	def destroy
		@log = Log.find(params[:log_id])
		@log.destroy
		redirect_to teammate_path(@teammate)
	end

	private

	def log_params
		log_params = params.require(:log).permit(:date, :mileage, :teammate_id)
	end
end
