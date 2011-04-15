class CreateFavorites < ActiveRecord::Migration
  def self.up
    create_table :favorites do |t|
      t.integer :runner_id
      t.integer :route_id

      t.timestamps
    end
  end

  def self.down
    drop_table :favorites
  end
end
