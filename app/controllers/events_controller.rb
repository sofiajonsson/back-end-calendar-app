class EventsController < ApplicationController
	before_action :set_params, only: [:update, :destroy, :index]
	def index
		@events = Event.all
		render json: @events
	end

	def create
		@event = Event.create(event_params)
		render json: @event
	end

	def update
		@event.update(event_params)
			if @event.save
				render json: @event, status: :accepted
			else
				render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
			end
	end

	def destroy
		puts @event
			@event.destroy
	end

	private

	def event_params
		params.require(:event).permit(:user_id, :title, :description, :date)
	end

	def set_params
		@event = Event.find(params[:id])
	end

end
