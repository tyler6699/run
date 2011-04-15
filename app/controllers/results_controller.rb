class ResultsController < ApplicationController         
            
  before_filter :find_runner
  def index
    @results = @runner.results
  end

  def show
    @result = @runner.results.find(params[:id])
  end

  def new   
    @result = Result.new    
    @result.route_id = params[:route_id]
    @effort = []
    20.downto(0) {|i| @effort<< i*5 }         
  end

  def edit
    @result = @runner.results.find(params[:id]) 
    @effort = []
    20.downto(0) {|i| @effort<< i*5 }       
  end

  def create
    @result = current_user.results.new(params[:result])
    if @result.save
      redirect_to(runner_results_path, :notice => 'Result was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @result = Result.find(params[:id])
    if @result.update_attributes(params[:result])
      redirect_to(@result, :notice => 'Result was successfully updated.')
    else
      render :action => "edit"
    end  
  end

  def destroy
    @result = Result.find(params[:id])
    @result.destroy  
    redirect_to(runner_results_path(@runner), :notice => 'Result was successfully removed.')
  end 
  
  def find_runner
    @runner = Runner.find(current_user)
  end              
  
end