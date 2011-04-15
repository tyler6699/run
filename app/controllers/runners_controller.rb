class RunnersController < RestrictedController     
  
  def index
    @runners = Runner.all
  end
  
  def new
    @runner = Runner.new
  end   
  
  def show 
    @runner = current_user
    @favorites = current_user.favorites 
    @routes = current_user.routes
    @results = current_user.results
  end
  
  def create
    @runner = Runner.new(params[:runner]) 
    @runner.role_id = 2
    if @runner.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
end