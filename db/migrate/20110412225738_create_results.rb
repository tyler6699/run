class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :runner_id
      t.integer :route_id
      t.integer :custom_distance
      t.integer :time_minutes
      t.date :date_of_run
      t.integer :effort

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
