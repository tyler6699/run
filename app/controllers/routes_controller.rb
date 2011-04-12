class RoutesController < RestrictedController
  def index
    @routes = Route.all
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
    @route = Route.new
  end

  def edit
    @route = Route.find(params[:id])
  end

  def create
    @route = Route.new(params[:route])     
    @route.runner_id = current_user
    
    if @route.save
      redirect_to(@route, :notice => 'Route was successfully created.')  
    else
      render :action => "new"
    end
  end

  def update
    @route = Route.find(params[:id])
    
    if @route.update_attributes(params[:route])
       redirect_to(@route, :notice => 'Route was successfully updated.')
    else
       render :action => "edit"
    end
  end

  def destroy
    @route = Route.find(params[:id])
    @route.destroy
  end
end
