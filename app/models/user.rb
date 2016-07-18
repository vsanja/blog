class User < ActiveRecord::Base
  has_secure_password  #dodavala sam bcrypt zbpg ovoga, to je zbog hesiranja
  validates_presence_of :password, :email
  validates_length_of :name, :maximum => 50
end




