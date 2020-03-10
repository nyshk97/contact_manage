class ApplicationController < ActionController::Base
  before_action :require_login

  protected

  def not_authenticated
    redirect_to new_session_url
  end
end
