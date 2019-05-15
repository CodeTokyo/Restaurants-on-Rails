module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_restaurant
      flash[:error] = "You're already logged in."
      redirect_to("/") && return
    elsif current_customer
      flash[:error] = "You're already logged in."
      redirect_to("/") && return
    end
  end
end