class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    current_user.admin? ?  dashboard_homes_path :  root_path
  end

end
