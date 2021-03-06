require 'bcrypt'   
class Runner < ActiveRecord::Base      
  belongs_to :role    
  has_many :results
  has_many :favorites
  has_many :routes
  
  validates_presence_of :name, :on => :create   
  attr_accessible :email, :password, :password_confirmation, :name
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create  
  validates_presence_of :email
  validates_uniqueness_of :email    
  
  def self.authenticate(email, password)      
    runner = find_by_email(email)
    if runner && runner.password_hash == BCrypt::Engine.hash_secret(password, runner.password_salt)
      runner
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end