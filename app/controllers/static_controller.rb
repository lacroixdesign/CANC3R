class StaticController < ApplicationController

  # GET /
  def index
    # Tees used in the #intro
    @tees = [
      { image: "mens.png",    alt: "Men's Purple Fighter Tee",       slug: "copy-of-fighter-tee" },
      { image: "ladies.png",     alt: "Ladies's Purple Fighter Tee",           slug: "female-purple-fighter-tee" },
      { image: "childrens.png", alt: "Childrens's Purple Fighter Tee", slug: "youth-purple-fighter-tee" }
    ]
  end

  # POST /newsletter
  def newsletter
    @subscription = NewsletterSubscribe.new params[:model]
    @subscription.submit
    render json: @subscription.result, status: @subscription.status
  end

end
