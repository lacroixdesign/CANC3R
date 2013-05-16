class TwitterEventsController < ApplicationController

  # GET /twitter-events
  def index
    @percent = TwitterEvent.percent_to_goal
    render json: { percent: @percent }
  end

  # POST /twitter-events
  def create
    TwitterEvent.create
    @percent = TwitterEvent.percent_to_goal
    render json: { percent: @percent }
  end

end
