class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def new       
    @favorite = current_user.favorites.new     
    @favorite.runner_id = @current_user.id
    @favorite.route_id = params[:route_id]
    
    if @favorite.save  
      redirect_to runner_path(@current_user.id), :notice => "Favorite was successfully added."
    else
      redirect_to runner_path(@current_user.id), :notice => "Favorite could not be added." 
    end   
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to(favorites_url)
  end
end
