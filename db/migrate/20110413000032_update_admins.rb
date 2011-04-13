class UpdateAdmins < ActiveRecord::Migration
  def self.up              
    runner = Runner.find_by_name('Ryan Tyler')
    runner.role_id = 1
    runner.save
  end

  def self.down
  end
end
