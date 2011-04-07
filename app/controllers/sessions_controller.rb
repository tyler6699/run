class SessionsController < ApplicationController    

  def new
  end
  
  def create
    runner = Runner.authenticate(params[:email], params[:password])
    if runner
      session[:runner_id] = runner.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
    session[:runner_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end     
 
end 