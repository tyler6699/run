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
  
end