class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :roles
  has_secure_password
end
