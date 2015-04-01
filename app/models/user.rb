class User < ActiveRecord::Base

  # this is for bcrypt (makes use of password/password confirmation)
  # It also provides the password digest in the database
  has_secure_password

  has_many :houses
  has_many :characters, through: :houses
end
