class ApplicationController < ActionController::Base
 protect_from_forgery
  helper_method :current_user   
   
  private
  
  def current_user
    @current_user ||= Runner.find(session[:runner_id]) if session[:runner_id]
  end   
  
  def check_role(role_name) 
    begin
      if current_user.role.name == role_name.to_s
        return true
      else
        redirect_to runner_path(current_user) 
      end    
    rescue  
      redirect_to runner_path(current_user) 
    end
  end           
       
end