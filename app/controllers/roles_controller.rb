class RolesController < RestrictedController    
  
  def index 
    check_role('Admin') 
    @runners = Runner.all   
  end
                             
end      