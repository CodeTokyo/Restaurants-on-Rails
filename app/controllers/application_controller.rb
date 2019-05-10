class ApplicationController < ActionController::Base
  before_action :kick_customer_out, if: :devise_controller?

  def kick_customer_out
    p "I'm running"
    redirect_to "/restaurants" if current_customer
  end
end
