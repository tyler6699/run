class RunnersController < ApplicationController
  def new
    @runner = Runner.new
  end
  
  def create
    @runner = Runner.new(params[:runner])
    if @runner.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end