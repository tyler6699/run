module ApplicationHelper         

  def find_user(id)       
    if !id.blank?
      runner = Runner.find_by_id(id)
      if runner.blank?
        return ''
      else
        return runner.name
      end
    else
      return ''
    end
  end   
  
    def check_role(role_name) 
    begin
      if current_user.role.name == role_name.to_s
        return true
      else
        return false
      end    
    rescue  
      return false
    end
  end             
  
end