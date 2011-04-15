class Route < ActiveRecord::Base
  belongs_to :runner
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"  
end