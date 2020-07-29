class ApplicationController < ActionController::Base
  include Clearance::Controller
  include Pundit
  before_action :require_login

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
  def user_not_authorized
    flash[:warning] = "You are not authorized to perform this action"
    redirect_to(request.referrer || root_path)
  end
end
