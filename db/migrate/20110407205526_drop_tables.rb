class DropTables < ActiveRecord::Migration
  def self.up     
    drop_table :users 
    rename_table :events, :routes
  end

  def self.down   
    create_table :users do |t|
      t.string :name
      t.timestamps
    end                  
    
     rename_table :routes, :events           
    
  end
end
