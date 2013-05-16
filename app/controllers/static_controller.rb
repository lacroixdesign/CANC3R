class StaticController < ApplicationController

  # GET /
  def index
    # Set the money raised as a number (NO dollar $ sign). Cents are optional.
    #   Ex. 23456.55
    #   Ex. 54312
    @money_raised = 23456.55
    # Tees used in the #intro
    @tees = [
      { image: "drum-tee.png",    alt: "Beat Cancer Rock Tee",       slug: "1286516-beat-cancer-rock-t-shirt" },
      { image: "mic-tee.png",     alt: "Music Speaks Tee",           slug: "1435182-music-speaks-t-shirt" },
      { image: "fighter-tee.png", alt: "The Spirt of a Fighter Tee", slug: "1435354-the-spirt-of-a-fighter-t-shirt" }
    ]
  end

  # POST /newsletter
  def newsletter
    @subscription = NewsletterSubscribe.new params[:model]
    @subscription.submit
    render json: @subscription.result, status: @subscription.status
  end

end
