class StaticController < ApplicationController

  # GET /
  def index
    # Tees used in the #intro
    @tees = [
      { image: "drum-tee.png",    alt: "Beat Cancer Rock Tee",       slug: "store/beat-cancer-1" },
      { image: "fighter-tee.png", alt: "The Spirt of a Fighter Tee", slug: "store/fighter-tee" },
      { image: "mens.png",    alt: "Men's Purple Fighter Tee",       slug: "?category=CANC3R" }
    ]
  end

  # POST /newsletter
  def newsletter
    @subscription = NewsletterSubscribe.new params[:model]
    @subscription.submit
    render json: @subscription.result, status: @subscription.status
  end

end
