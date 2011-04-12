class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.string :description
      
      t.timestamps
    end      
    
    add_column :routes, :runner_id,:integer
  end

  def self.down
    drop_table :roles    
    remove_column :routes, :runner_id
  end
end
