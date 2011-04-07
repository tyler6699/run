class ApplicationController < ActionController::Base
 protect_from_forgery
  helper_method :current_user
  
  private
  
  def current_user
    @current_user ||= Runner.find(session[:runner_id]) if session[:runner_id]
  end          
end
