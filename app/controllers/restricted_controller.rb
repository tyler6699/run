class RestrictedController < ApplicationController    
  before_filter :authenticate
  private   
  def authenticate
    if current_user.blank?
      redirect_to log_in_path
    end  
  end
end         