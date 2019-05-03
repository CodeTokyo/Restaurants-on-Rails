module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_restaurant
      flash.clear
      redirect_to("/meals") && return
    elsif current_customer
      flash.clear
      redirect_to("/meals") && return
    end
  end
end