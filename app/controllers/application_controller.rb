class ApplicationController < ActionController::Base
  ActionController: :Base
  skip_before_action :verify_authenticity_token
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || '/restaurants'
  end
end
  
