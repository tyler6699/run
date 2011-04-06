class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :url
      t.integer :distance
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
