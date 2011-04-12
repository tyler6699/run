class AddFieldsToResult < ActiveRecord::Migration
  def self.up     
    add_column :results, :weather, :string
    add_column :results, :feelings, :string
    add_column :results, :time, :time    
    add_column :results, :exercise_id, :integer
  end

  def self.down 
    remove_column :results, :weather
    remove_column :results, :feelings
    remove_column :results, :time 
    remove_column :results, :exercise_id     
  end
end
