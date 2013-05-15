class StaticController < ApplicationController

  # POST /newsletter
  def newsletter
    @subscription = NewsletterSubscribe.new params[:model]
    @subscription.submit
    render json: @subscription.result, status: @subscription.status
  end
  
end
