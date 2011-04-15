class Favorite < ActiveRecord::Base            
  belongs_to :runner
  
  validates_uniqueness_of :route_id, :scope => [:route_id,:runner_id] , :message => "must be unique"
end