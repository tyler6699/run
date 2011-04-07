class RestrictedController < ApplicationController    
  before_filter :authenticate
  private   
  def authenticate
    if current_user.blank?
      redirect_to new_session_path
    end  
  end
end         