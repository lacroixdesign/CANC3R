class FacebookEventsController < ApplicationController

  # GET /facebook-events
  def index
    @percent = FacebookEvent.percent_to_goal
    render json: { percent: @percent }
  end

  # POST /facebook-events
  def create
    FacebookEvent.create
    @percent = FacebookEvent.percent_to_goal
    render json: { percent: @percent }
  end

end
