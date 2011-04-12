class CreateRolesData < ActiveRecord::Migration
  def self.up      
    Role.create!(:name => 'Admin', :description => 'Full control')  
    Role.create!(:name => 'Runner', :description => 'Can create routes, edit own routes and create runs')  
    add_column :runners, :role_id, :integer
  end

  def self.down
  end
end
